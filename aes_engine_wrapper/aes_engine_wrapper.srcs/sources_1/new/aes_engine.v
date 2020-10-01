`timescale 1ns / 1ps

module aes_engine(
    
    input [0:2047] sbox,
    input [0:319] rcon,
    input clk, 
    input rst,
    input [127:0] anahtar, 
    input [127:0] blok,
    input g_gecerli,
    output  reg hazir,
    output  reg [127:0]sifre,
    output  c_gecerli
    
    );
    
    assign c_gecerli = g_gecerli;
    
    initial hazir = 0;    
        
    reg  [127:0] durum_matrisi, durum_matrisi_next;
    wire [127:0] bayt[9:0];
    wire [127:0] skm[9:0];
    wire [127:0] su[8:0];   
    wire [127:0] sa[9:0];
    wire [127:0] to[8:0];
    wire [127:0] yeni_sifre;

    always @* begin
      
      if(rst) begin
            sifre = 0;
            hazir = 0;
      end
         
      else begin
            sifre = yeni_sifre;
            hazir = 1;
      end
      
      durum_matrisi_next = anahtar ^ blok;
    
    end

    always @(posedge clk) begin

      durum_matrisi <= durum_matrisi_next;
      
    end

    bayt_degistirme bd1(clk,sbox,durum_matrisi,bayt[0]);
    satir_kaydirma sak1(clk,bayt[0], skm[0]);
    sutun_karistirma sk1(clk,skm[0],su[0]);
    tur_anahtari ta1(clk,sbox,rcon,4'd0,anahtar,sa[0]);
    tur_anahtari_ile_toplama tait1(clk,su[0],sa[0],to[0]);
    
    bayt_degistirme bd2(clk,sbox,to[0],bayt[1]);
    satir_kaydirma sak2(clk,bayt[1], skm[1]);
    sutun_karistirma sk2(clk,skm[1],su[1]);
    tur_anahtari ta2(clk,sbox,rcon,4'd1,sa[0],sa[1]);
    tur_anahtari_ile_toplama tait2(clk,su[1],sa[1],to[1]);
    
    bayt_degistirme bd3(clk,sbox,to[1],bayt[2]);
    satir_kaydirma sak3(clk,bayt[2], skm[2]);
    sutun_karistirma sk3(clk,skm[2],su[2]);
    tur_anahtari ta3(clk,sbox,rcon,4'd2,sa[1],sa[2]);
    tur_anahtari_ile_toplama tait3(clk,su[2],sa[2],to[2]);
    
    bayt_degistirme bd4(clk,sbox,to[2],bayt[3]);
    satir_kaydirma sak4(clk,bayt[3], skm[3]);
    sutun_karistirma sk4(clk,skm[3],su[3]);
    tur_anahtari ta4(clk,sbox,rcon,4'd3,sa[2],sa[3]);
    tur_anahtari_ile_toplama tait4(clk,su[3],sa[3],to[3]);
    
    bayt_degistirme bd5(clk,sbox,to[3],bayt[4]);
    satir_kaydirma sak5(clk,bayt[4], skm[4]);
    sutun_karistirma sk5(clk,skm[4],su[4]);
    tur_anahtari ta5(clk,sbox,rcon,4'd4,sa[3],sa[4]);
    tur_anahtari_ile_toplama tait5(clk,su[4],sa[4],to[4]);
    
    bayt_degistirme bd6(clk,sbox,to[4],bayt[5]);
    satir_kaydirma sak6(clk,bayt[5], skm[5]);
    sutun_karistirma sk6(clk,skm[5],su[5]);
    tur_anahtari ta6(clk,sbox,rcon,4'd5,sa[4],sa[5]);
    tur_anahtari_ile_toplama tait6(clk,su[5],sa[5],to[5]);
    
    bayt_degistirme bd7(clk,sbox,to[5],bayt[6]);
    satir_kaydirma sak7(clk,bayt[6], skm[6]);
    sutun_karistirma sk7(clk,skm[6],su[6]);
    tur_anahtari ta7(clk,sbox,rcon,4'd6,sa[5],sa[6]);
    tur_anahtari_ile_toplama tait7(clk,su[6],sa[6],to[6]);
    
    bayt_degistirme bd8(clk,sbox,to[6],bayt[7]);
    satir_kaydirma sak8(clk,bayt[7], skm[7]);
    sutun_karistirma sk8(clk,skm[7],su[7]);
    tur_anahtari ta8(clk,sbox,rcon,4'd7,sa[6],sa[7]);
    tur_anahtari_ile_toplama tait8(clk,su[7],sa[7],to[7]);
    
    bayt_degistirme bd9(clk,sbox,to[7],bayt[8]);
    satir_kaydirma sak9(clk,bayt[8], skm[8]);
    sutun_karistirma sk9(clk,skm[8],su[8]);
    tur_anahtari ta9(clk,sbox,rcon,4'd8,sa[7],sa[8]);
    tur_anahtari_ile_toplama tait9(clk,su[8],sa[8],to[8]);
    
    bayt_degistirme bd10(clk,sbox,to[8],bayt[9]);
    satir_kaydirma sk10(clk,bayt[9], skm[9]);
    tur_anahtari ta10(clk,sbox,rcon,4'd9,sa[8],sa[9]);
    tur_anahtari_ile_toplama tait10(clk,skm[9],sa[9],yeni_sifre);

endmodule