`timescale 1ns / 1ps

module tur_anahtari_ile_toplama(
    
    input clk,
    input [127:0] sutun_karistirilmis_matris,
    input [127:0] tur_anahtari,
    output reg [127:0] toplanmis_matris

    );
    
    reg [31:0] islem1;
    reg [31:0] islem2;
    reg [31:0] islem3;
    reg [31:0] islem4;

    always @(posedge clk) begin

    islem1 <= sutun_karistirilmis_matris[127:96] ^ tur_anahtari[127:96];
    islem2 <= sutun_karistirilmis_matris[95:64]  ^ tur_anahtari[95:64]; 
    islem3 <= sutun_karistirilmis_matris[63:32]  ^ tur_anahtari[63:32]; 
    islem4 <= sutun_karistirilmis_matris[31:0]   ^ tur_anahtari[31:0];  

    toplanmis_matris[127:96] <= islem1;
    toplanmis_matris[95:64]  <= islem2; 
    toplanmis_matris[63:32]  <= islem3;    
    toplanmis_matris[31:0]   <= islem4;   
    
    end

endmodule