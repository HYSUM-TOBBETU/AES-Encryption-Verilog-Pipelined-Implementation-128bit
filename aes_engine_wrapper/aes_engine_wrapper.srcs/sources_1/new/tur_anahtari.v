`timescale 1ns / 1ps

module tur_anahtari(
    
    input clk,
    input [0:2047] sbox,
    input [0:319] rcon,
    input [3:0] kacinci_round,
    input [127:0] onceki_anahtar,
    output reg [127:0] sonraki_anahtar
    
    );
    
    reg [10:0] islems11;
    reg [10:0] islems12;
    reg [10:0] islems13;
    reg [10:0] islems14;

    reg [10:0] islems21;
    reg [10:0] islems22;
    reg [10:0] islems23;
    reg [10:0] islems24;

    reg [7:0] islems31;
    reg [7:0] islems32;
    reg [7:0] islems33;
    reg [7:0] islems34;

    reg [31:0] sbir;

    reg [8:0]  islemr1;
    reg [31:0] islemr2;
    
    always @(posedge clk) begin
    
    islems11 <= {onceki_anahtar[23:16] ,3'b000};
    islems12 <= {onceki_anahtar[15:8]  ,3'b000};
    islems13 <= {onceki_anahtar[7 :0]  ,3'b000};
    islems14 <= {onceki_anahtar[31:24] ,3'b000};
    
    islems21 <= {islems11[10:3] ,3'b111};
    islems22 <= {islems12[10:3] ,3'b111};
    islems23 <= {islems13[10:3] ,3'b111};
    islems24 <= {islems14[10:3] ,3'b111};

    islems31 <= sbox [islems21 -:8];
    islems32 <= sbox [islems22 -:8];
    islems33 <= sbox [islems23 -:8];
    islems34 <= sbox [islems24 -:8];

    sbir <= {islems31, islems32, islems33, islems34};
    
    islemr1 <= {kacinci_round , 5'b11111};
    islemr2 <= rcon[islemr1-:32];

    sonraki_anahtar[127:96] <= sbir ^ islemr2 ^ onceki_anahtar[127:96];
    sonraki_anahtar[95:64] <= sonraki_anahtar[127:96] ^ onceki_anahtar[95:64];
    sonraki_anahtar[63:32] <= sonraki_anahtar[95:64]  ^ onceki_anahtar[63:32];
    sonraki_anahtar[31:0]  <= sonraki_anahtar[63:32]  ^ onceki_anahtar[31:0]; 

    end

endmodule    