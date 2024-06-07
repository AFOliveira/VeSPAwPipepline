`timescale 1ns / 1ps

module VgaDataManagerControlFSM 
(
    input i_VgaClk,
    input i_Rst,
    output reg o_OutEn,
    output reg [19:0] o_MemAddr,
    output reg o_HSync,
    output reg o_VSync
);

// states
parameter ST_IDLE = 2'b00;
parameter ST_H_COUNT = 2'b01;
parameter ST_V_COUNT  = 2'b10;
parameter ST_OUT_EN = 2'b11;

// vga resolution 640x480 timing parameters
parameter X_RES = 640;
parameter Y_RES = 480;
parameter H_FRONT_PORCH = 16;
parameter H_SYNC_PULSE = 96;
parameter H_BACK_PORCH = 48;
parameter V_FRONT_PORCH = 10;
parameter V_SYNC_PULSE = 2;
parameter V_BACK_PORCH = 33;
parameter H_TOTAL = X_RES + H_FRONT_PORCH + H_SYNC_PULSE + H_BACK_PORCH;
parameter V_TOTAL = Y_RES + V_FRONT_PORCH + V_SYNC_PULSE + V_BACK_PORCH;

// internal variables
reg [1:0] current_state, next_state;
reg [9:0] r_HPixelCount; // horizontal pixel counter
reg [9:0] r_VLineCount;  // vertical line counter

// vga timing control
always @(posedge i_VgaClk or posedge i_Rst) begin
    if (i_Rst) begin
        r_HPixelCount <= 0;
        r_VLineCount <= 0;
        o_HSync <= 1;
        o_VSync <= 1;
        o_OutEn <= 0;
        o_MemAddr <= 0;
    end 
    else begin
        // horizontal counter
        if (r_HPixelCount < H_TOTAL - 1) begin
            r_HPixelCount <= r_HPixelCount + 1;
        end 
        else begin
            r_HPixelCount <= 0;
            // vertical counter
            if (r_VLineCount < V_TOTAL - 1) begin
                r_VLineCount <= r_VLineCount + 1;
            end 
            else begin
                r_VLineCount <= 0;
            end
        end

        // generate horizontal sync pulse
        if (r_HPixelCount < H_SYNC_PULSE) begin
            o_HSync <= 1;
        end 
        else begin
            o_HSync <= 0;
        end

        // generate vertical sync pulse
        if (r_VLineCount < V_SYNC_PULSE) begin
            o_VSync <= 1;
        end 
        else begin
            o_VSync <= 0;
        end

        // generate output enable signal and memory address
        if (r_HPixelCount >= (H_SYNC_PULSE + H_BACK_PORCH) && r_HPixelCount < (H_SYNC_PULSE + H_BACK_PORCH + X_RES) &&
            r_VLineCount >= (V_SYNC_PULSE + V_BACK_PORCH) && r_VLineCount < (V_SYNC_PULSE + V_BACK_PORCH + Y_RES)) begin
            o_OutEn <= 1;
            o_MemAddr <= (((r_VLineCount - (V_SYNC_PULSE + V_BACK_PORCH))/2) * (X_RES/2)) + ((r_HPixelCount - (H_SYNC_PULSE + H_BACK_PORCH))/2);
        end 
        else begin
            o_OutEn <= 0;
        end
    end
end

// state transition logic
always @(*) begin
    case (current_state)
        ST_IDLE: begin
            next_state = ST_H_COUNT;
        end
        ST_H_COUNT: begin
            if (r_HPixelCount < H_TOTAL - 1) begin
                next_state = ST_H_COUNT;
            end else begin
                next_state = ST_V_COUNT;
            end
        end
        ST_V_COUNT: begin
            if (r_VLineCount < V_TOTAL - 1) begin
                next_state = ST_H_COUNT;
            end else begin
                next_state = ST_H_COUNT;
            end
        end
        ST_OUT_EN: begin
        if(o_OutEn == 1) begin
            next_state = ST_H_COUNT;
            end
        end
        default: begin
            next_state = ST_IDLE;
        end
    endcase
end

endmodule
