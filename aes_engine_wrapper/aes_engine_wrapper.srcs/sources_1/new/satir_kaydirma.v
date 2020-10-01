`timescale 1ns / 1ps

module satir_kaydirma(
    
    input clk,
    input [127:0] bayt_degistirilmis_matris,
    output reg [127:0] satir_kaydirilmis_matris

    );
    
    reg [127:0] satir_kaydirilmis_matris_next;
    
    always @(posedge clk) begin
    
    satir_kaydirilmis_matris[127:120] <= bayt_degistirilmis_matris[127:120];      
    satir_kaydirilmis_matris[119:112] <= bayt_degistirilmis_matris[87:80];        
    satir_kaydirilmis_matris[111:104] <= bayt_degistirilmis_matris[47:40];        
    satir_kaydirilmis_matris[103:96]  <= bayt_degistirilmis_matris[7:0];          
                                                                         
    satir_kaydirilmis_matris[95:88]   <= bayt_degistirilmis_matris[95:88];        
    satir_kaydirilmis_matris[87:80]   <= bayt_degistirilmis_matris[55:48];        
    satir_kaydirilmis_matris[79:72]   <= bayt_degistirilmis_matris[15:8];         
    satir_kaydirilmis_matris[71:64]   <= bayt_degistirilmis_matris[103:96];       
                                                                          
    satir_kaydirilmis_matris[63:56]   <= bayt_degistirilmis_matris[63:56];        
    satir_kaydirilmis_matris[55:48]   <= bayt_degistirilmis_matris[23:16];        
    satir_kaydirilmis_matris[47:40]   <= bayt_degistirilmis_matris[111:104];      
    satir_kaydirilmis_matris[39:32]   <= bayt_degistirilmis_matris[71:64];        
                                                                          
    satir_kaydirilmis_matris[31:24]   <= bayt_degistirilmis_matris[31:24];        
    satir_kaydirilmis_matris[23:16]   <= bayt_degistirilmis_matris[119:112];      
    satir_kaydirilmis_matris[15:8]    <= bayt_degistirilmis_matris[79:72];        
    satir_kaydirilmis_matris[7:0]     <= bayt_degistirilmis_matris[39:32];        
    
    end    
    
endmodule