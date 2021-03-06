   1: LOCAL_PATH := $(call my-dir)

   2:  

   3: include $(CLEAR_VARS)

   4:  

   5: LOCAL_MODULE := ffmpeg

   6:  

   7: include $(LOCAL_PATH)/config.mak

   8:  

   9: LOCAL_CFLAGS := -DHAVE_AV_CONFIG_H -std=c99

  10:  

  11: AVUTIL_C_FILES = adler32.c \

  12: aes.c \

  13: avstring.c \

  14: base64.c \

  15: crc.c \

  16: des.c \

  17: error.c \

  18: fifo.c \

  19: intfloat_readwrite.c \

  20: lfg.c \

  21: lls.c \

  22: log.c \

  23: lzo.c \

  24: mathematics.c \

  25: md5.c \

  26: mem.c \

  27: pixdesc.c \

  28: random_seed.c \

  29: rational.c \

  30: rc4.c \

  31: sha.c \

  32: tree.c \

  33: utils.c \

  34:  

  35: AVUTIL_SRC_FILES = $(addprefix libavutil/, $(sort $(AVUTIL_C_FILES)))

  36:  

  37: AVCODEC_C_FILES = allcodecs.c \

  38: audioconvert.c \

  39: avpacket.c \

  40: bitstream.c \

  41: bitstream_filter.c \

  42: dsputil.c \

  43: eval.c \

  44: faanidct.c \

  45: imgconvert.c \

  46: jrevdct.c \

  47: opt.c \

  48: options.c \

  49: parser.c \

  50: raw.c \

  51: resample.c \

  52: resample2.c \

  53: simple_idct.c \

  54: utils.c \

  55:  

  56: AVCODEC_C_FILES-$(CONFIG_AANDCT) += aandcttab.c

  57: AVCODEC_C_FILES-$(CONFIG_ENCODERS) += faandct.c jfdctfst.c jfdctint.c

  58: AVCODEC_C_FILES-$(CONFIG_DCT) += dct.c

  59: AVCODEC_C_FILES-$(CONFIG_DWT) += dwt.c

  60: AVCODEC_C_FILES-$(CONFIG_DXVA2) += dxva2.c

  61: FFT-FILES-$(CONFIG_HARDCODED_TABLES) += cos_tables.c

  62: AVCODEC_C_FILES-$(CONFIG_FFT) += avfft.c fft.c $(FFT-FILES-yes)

  63: AVCODEC_C_FILES-$(CONFIG_GOLOMB) += golomb.c

  64: AVCODEC_C_FILES-$(CONFIG_H264DSP) += h264dsp.c h264idct.c h264pred.c

  65: AVCODEC_C_FILES-$(CONFIG_LPC) += lpc.c

  66: AVCODEC_C_FILES-$(CONFIG_LSP) += lsp.c

  67: AVCODEC_C_FILES-$(CONFIG_MDCT) += mdct.c

  68: RDFT-FILES-$(CONFIG_HARDCODED_TABLES) += sin_tables.c

  69: AVCODEC_C_FILES-$(CONFIG_RDFT) += rdft.c $(RDFT-FILES-yes)

  70: AVCODEC_C_FILES-$(CONFIG_VAAPI) += vaapi.c

  71: AVCODEC_C_FILES-$(CONFIG_VDPAU) += vdpau.c

  72:  

  73: AVCODEC_C_FILES-$(CONFIG_AAC_DECODER) += aacdec.c aactab.c aacsbr.c aacps.c

  74: AVCODEC_C_FILES-$(CONFIG_AAC_ENCODER) += aacenc.c aaccoder.c \

  75: aacpsy.c aactab.c \

  76: psymodel.c iirfilter.c \

  77: mpeg4audio.c

  78: AVCODEC_C_FILES-$(CONFIG_AASC_DECODER) += aasc.c msrledec.c

  79: AVCODEC_C_FILES-$(CONFIG_AC3_DECODER) += ac3dec.c ac3dec_data.c ac3.c

  80: AVCODEC_C_FILES-$(CONFIG_AC3_ENCODER) += ac3enc.c ac3tab.c ac3.c

  81: AVCODEC_C_FILES-$(CONFIG_ALAC_DECODER) += alac.c

  82: AVCODEC_C_FILES-$(CONFIG_ALAC_ENCODER) += alacenc.c

  83: AVCODEC_C_FILES-$(CONFIG_ALS_DECODER) += alsdec.c bgmc.c mpeg4audio.c

  84: AVCODEC_C_FILES-$(CONFIG_AMRNB_DECODER) += amrnbdec.c celp_filters.c \

  85: celp_math.c acelp_filters.c \

  86: acelp_vectors.c \

  87: acelp_pitch_delay.c

  88: AVCODEC_C_FILES-$(CONFIG_AMV_DECODER) += sp5xdec.c mjpegdec.c mjpeg.c

  89: AVCODEC_C_FILES-$(CONFIG_ANM_DECODER) += anm.c

  90: AVCODEC_C_FILES-$(CONFIG_APE_DECODER) += apedec.c

  91: AVCODEC_C_FILES-$(CONFIG_ASV1_DECODER) += asv1.c mpeg12data.c

  92: AVCODEC_C_FILES-$(CONFIG_ASV1_ENCODER) += asv1.c mpeg12data.c

  93: AVCODEC_C_FILES-$(CONFIG_ASV2_DECODER) += asv1.c mpeg12data.c

  94: AVCODEC_C_FILES-$(CONFIG_ASV2_ENCODER) += asv1.c mpeg12data.c

  95: AVCODEC_C_FILES-$(CONFIG_ATRAC1_DECODER) += atrac1.c atrac.c

  96: AVCODEC_C_FILES-$(CONFIG_ATRAC3_DECODER) += atrac3.c atrac.c

  97: AVCODEC_C_FILES-$(CONFIG_AURA_DECODER) += cyuv.c

  98: AVCODEC_C_FILES-$(CONFIG_AURA2_DECODER) += aura.c

  99: AVCODEC_C_FILES-$(CONFIG_AVS_DECODER) += avs.c

 100: AVCODEC_C_FILES-$(CONFIG_BETHSOFTVID_DECODER) += bethsoftvideo.c

 101: AVCODEC_C_FILES-$(CONFIG_BFI_DECODER) += bfi.c

 102: AVCODEC_C_FILES-$(CONFIG_BINK_DECODER) += bink.c binkidct.c

 103: AVCODEC_C_FILES-$(CONFIG_BINKAUDIO_DCT_DECODER) += binkaudio.c wma.c

 104: AVCODEC_C_FILES-$(CONFIG_BINKAUDIO_RDFT_DECODER) += binkaudio.c wma.c

 105: AVCODEC_C_FILES-$(CONFIG_BMP_DECODER) += bmp.c msrledec.c

 106: AVCODEC_C_FILES-$(CONFIG_BMP_ENCODER) += bmpenc.c

 107: AVCODEC_C_FILES-$(CONFIG_C93_DECODER) += c93.c

 108: AVCODEC_C_FILES-$(CONFIG_CAVS_DECODER) += cavs.c cavsdec.c cavsdsp.c \

 109: mpeg12data.c mpegvideo.c

 110: AVCODEC_C_FILES-$(CONFIG_CDGRAPHICS_DECODER) += cdgraphics.c

 111: AVCODEC_C_FILES-$(CONFIG_CINEPAK_DECODER) += cinepak.c

 112: AVCODEC_C_FILES-$(CONFIG_CLJR_DECODER) += cljr.c

 113: AVCODEC_C_FILES-$(CONFIG_CLJR_ENCODER) += cljr.c

 114: AVCODEC_C_FILES-$(CONFIG_COOK_DECODER) += cook.c

 115: AVCODEC_C_FILES-$(CONFIG_CSCD_DECODER) += cscd.c

 116: AVCODEC_C_FILES-$(CONFIG_CYUV_DECODER) += cyuv.c

 117: AVCODEC_C_FILES-$(CONFIG_DCA_DECODER) += dca.c synth_filter.c dcadsp.c

 118: AVCODEC_C_FILES-$(CONFIG_DNXHD_DECODER) += dnxhddec.c dnxhddata.c

 119: AVCODEC_C_FILES-$(CONFIG_DNXHD_ENCODER) += dnxhdenc.c dnxhddata.c \

 120: mpegvideo_enc.c motion_est.c \

 121: ratecontrol.c mpeg12data.c \

 122: mpegvideo.c

 123: AVCODEC_C_FILES-$(CONFIG_DPX_DECODER) += dpx.c

 124: AVCODEC_C_FILES-$(CONFIG_DSICINAUDIO_DECODER) += dsicinav.c

 125: AVCODEC_C_FILES-$(CONFIG_DSICINVIDEO_DECODER) += dsicinav.c

 126: AVCODEC_C_FILES-$(CONFIG_DVBSUB_DECODER) += dvbsubdec.c

 127: AVCODEC_C_FILES-$(CONFIG_DVBSUB_ENCODER) += dvbsub.c

 128: AVCODEC_C_FILES-$(CONFIG_DVDSUB_DECODER) += dvdsubdec.c

 129: AVCODEC_C_FILES-$(CONFIG_DVDSUB_ENCODER) += dvdsubenc.c

 130: AVCODEC_C_FILES-$(CONFIG_DVVIDEO_DECODER) += dv.c dvdata.c

 131: AVCODEC_C_FILES-$(CONFIG_DVVIDEO_ENCODER) += dv.c dvdata.c

 132: AVCODEC_C_FILES-$(CONFIG_DXA_DECODER) += dxa.c

 133: AVCODEC_C_FILES-$(CONFIG_EAC3_DECODER) += eac3dec.c eac3dec_data.c

 134: AVCODEC_C_FILES-$(CONFIG_EACMV_DECODER) += eacmv.c

 135: AVCODEC_C_FILES-$(CONFIG_EAMAD_DECODER) += eamad.c eaidct.c mpeg12.c \

 136: mpeg12data.c mpegvideo.c \

 137: error_resilience.c

 138: AVCODEC_C_FILES-$(CONFIG_EATGQ_DECODER) += eatgq.c eaidct.c

 139: AVCODEC_C_FILES-$(CONFIG_EATGV_DECODER) += eatgv.c

 140: AVCODEC_C_FILES-$(CONFIG_EATQI_DECODER) += eatqi.c eaidct.c mpeg12.c \

 141: mpeg12data.c mpegvideo.c \

 142: error_resilience.c

 143: AVCODEC_C_FILES-$(CONFIG_EIGHTBPS_DECODER) += 8bps.c

 144: AVCODEC_C_FILES-$(CONFIG_EIGHTSVX_EXP_DECODER) += 8svx.c

 145: AVCODEC_C_FILES-$(CONFIG_EIGHTSVX_FIB_DECODER) += 8svx.c

 146: AVCODEC_C_FILES-$(CONFIG_ESCAPE124_DECODER) += escape124.c

 147: AVCODEC_C_FILES-$(CONFIG_FFV1_DECODER) += ffv1.c rangecoder.c

 148: AVCODEC_C_FILES-$(CONFIG_FFV1_ENCODER) += ffv1.c rangecoder.c

 149: AVCODEC_C_FILES-$(CONFIG_FFVHUFF_DECODER) += huffyuv.c

 150: AVCODEC_C_FILES-$(CONFIG_FFVHUFF_ENCODER) += huffyuv.c

 151: AVCODEC_C_FILES-$(CONFIG_FLAC_DECODER) += flacdec.c flacdata.c flac.c

 152: AVCODEC_C_FILES-$(CONFIG_FLAC_ENCODER) += flacenc.c flacdata.c flac.c

 153: AVCODEC_C_FILES-$(CONFIG_FLASHSV_DECODER) += flashsv.c

 154: AVCODEC_C_FILES-$(CONFIG_FLASHSV_ENCODER) += flashsvenc.c

 155: AVCODEC_C_FILES-$(CONFIG_FLIC_DECODER) += flicvideo.c

 156: AVCODEC_C_FILES-$(CONFIG_FOURXM_DECODER) += 4xm.c

 157: AVCODEC_C_FILES-$(CONFIG_FRAPS_DECODER) += fraps.c huffman.c

 158: AVCODEC_C_FILES-$(CONFIG_FRWU_DECODER) += frwu.c

 159: AVCODEC_C_FILES-$(CONFIG_GIF_DECODER) += gifdec.c lzw.c

 160: AVCODEC_C_FILES-$(CONFIG_GIF_ENCODER) += gif.c lzwenc.c

 161: AVCODEC_C_FILES-$(CONFIG_H261_DECODER) += h261dec.c h261.c \

 162: mpegvideo.c error_resilience.c

 163: AVCODEC_C_FILES-$(CONFIG_H261_ENCODER) += h261enc.c h261.c \

 164: mpegvideo_enc.c motion_est.c \

 165: ratecontrol.c mpeg12data.c \

 166: mpegvideo.c

 167: AVCODEC_C_FILES-$(CONFIG_H263_DECODER) += h263dec.c h263.c ituh263dec.c \

 168: mpeg4video.c mpeg4videodec.c flvdec.c\

 169: intelh263dec.c mpegvideo.c \

 170: error_resilience.c

 171: AVCODEC_C_FILES-$(CONFIG_H263_VAAPI_HWACCEL) += vaapi_mpeg4.c

 172: AVCODEC_C_FILES-$(CONFIG_H263_ENCODER) += mpegvideo_enc.c mpeg4video.c \

 173: mpeg4videoenc.c motion_est.c \

 174: ratecontrol.c h263.c ituh263enc.c \

 175: flvenc.c mpeg12data.c \

 176: mpegvideo.c error_resilience.c

 177: AVCODEC_C_FILES-$(CONFIG_H264_DECODER) += h264.c \

 178: h264_loopfilter.c h264_direct.c \

 179: cabac.c h264_sei.c h264_ps.c \

 180: h264_refs.c h264_cavlc.c h264_cabac.c\

 181: mpegvideo.c error_resilience.c

 182: AVCODEC_C_FILES-$(CONFIG_H264_DXVA2_HWACCEL) += dxva2_h264.c

 183: AVCODEC_C_FILES-$(CONFIG_H264_ENCODER) += h264enc.c h264dspenc.c

 184: AVCODEC_C_FILES-$(CONFIG_H264_VAAPI_HWACCEL) += vaapi_h264.c

 185: AVCODEC_C_FILES-$(CONFIG_HUFFYUV_DECODER) += huffyuv.c

 186: AVCODEC_C_FILES-$(CONFIG_HUFFYUV_ENCODER) += huffyuv.c

 187: AVCODEC_C_FILES-$(CONFIG_IDCIN_DECODER) += idcinvideo.c

 188: AVCODEC_C_FILES-$(CONFIG_IFF_BYTERUN1_DECODER) += iff.c

 189: AVCODEC_C_FILES-$(CONFIG_IFF_ILBM_DECODER) += iff.c

 190: AVCODEC_C_FILES-$(CONFIG_IMC_DECODER) += imc.c

 191: AVCODEC_C_FILES-$(CONFIG_INDEO2_DECODER) += indeo2.c

 192: AVCODEC_C_FILES-$(CONFIG_INDEO3_DECODER) += indeo3.c

 193: AVCODEC_C_FILES-$(CONFIG_INDEO5_DECODER) += indeo5.c ivi_common.c ivi_dsp.c

 194: AVCODEC_C_FILES-$(CONFIG_INTERPLAY_DPCM_DECODER) += dpcm.c

 195: AVCODEC_C_FILES-$(CONFIG_INTERPLAY_VIDEO_DECODER) += interplayvideo.c

 196: AVCODEC_C_FILES-$(CONFIG_JPEGLS_DECODER) += jpeglsdec.c jpegls.c \

 197: mjpegdec.c mjpeg.c

 198: AVCODEC_C_FILES-$(CONFIG_JPEGLS_ENCODER) += jpeglsenc.c jpegls.c

 199: AVCODEC_C_FILES-$(CONFIG_KGV1_DECODER) += kgv1dec.c

 200: AVCODEC_C_FILES-$(CONFIG_KMVC_DECODER) += kmvc.c

 201: AVCODEC_C_FILES-$(CONFIG_LJPEG_ENCODER) += ljpegenc.c mjpegenc.c mjpeg.c \

 202: mpegvideo_enc.c motion_est.c \

 203: ratecontrol.c mpeg12data.c \

 204: mpegvideo.c

 205: AVCODEC_C_FILES-$(CONFIG_LOCO_DECODER) += loco.c

 206: AVCODEC_C_FILES-$(CONFIG_MACE3_DECODER) += mace.c

 207: AVCODEC_C_FILES-$(CONFIG_MACE6_DECODER) += mace.c

 208: AVCODEC_C_FILES-$(CONFIG_MDEC_DECODER) += mdec.c mpeg12.c mpeg12data.c \

 209: mpegvideo.c error_resilience.c

 210: AVCODEC_C_FILES-$(CONFIG_MIMIC_DECODER) += mimic.c

 211: AVCODEC_C_FILES-$(CONFIG_MJPEG_DECODER) += mjpegdec.c mjpeg.c

 212: AVCODEC_C_FILES-$(CONFIG_MJPEG_ENCODER) += mjpegenc.c mjpeg.c \

 213: mpegvideo_enc.c motion_est.c \

 214: ratecontrol.c mpeg12data.c \

 215: mpegvideo.c

 216: AVCODEC_C_FILES-$(CONFIG_MJPEGB_DECODER) += mjpegbdec.c mjpegdec.c mjpeg.c

 217: AVCODEC_C_FILES-$(CONFIG_MLP_DECODER) += mlpdec.c mlpdsp.c

 218: AVCODEC_C_FILES-$(CONFIG_MMVIDEO_DECODER) += mmvideo.c

 219: AVCODEC_C_FILES-$(CONFIG_MOTIONPIXELS_DECODER) += motionpixels.c

 220: AVCODEC_C_FILES-$(CONFIG_MP1_DECODER) += mpegaudiodec.c mpegaudiodecheader.c \

 221: mpegaudio.c mpegaudiodata.c

 222: AVCODEC_C_FILES-$(CONFIG_MP2_DECODER) += mpegaudiodec.c mpegaudiodecheader.c \

 223: mpegaudio.c mpegaudiodata.c

 224: AVCODEC_C_FILES-$(CONFIG_MP2_ENCODER) += mpegaudioenc.c mpegaudio.c \

 225: mpegaudiodata.c

 226: AVCODEC_C_FILES-$(CONFIG_MP3ADU_DECODER) += mpegaudiodec.c mpegaudiodecheader.c \

 227: mpegaudio.c mpegaudiodata.c

 228: AVCODEC_C_FILES-$(CONFIG_MP3ON4_DECODER) += mpegaudiodec.c mpegaudiodecheader.c \

 229: mpegaudio.c mpegaudiodata.c \

 230: mpeg4audio.c

 231: AVCODEC_C_FILES-$(CONFIG_MP3_DECODER) += mpegaudiodec.c mpegaudiodecheader.c \

 232: mpegaudio.c mpegaudiodata.c

 233: AVCODEC_C_FILES-$(CONFIG_MPC7_DECODER) += mpc7.c mpc.c mpegaudiodec.c \

 234: mpegaudiodecheader.c mpegaudio.c \

 235: mpegaudiodata.c

 236: AVCODEC_C_FILES-$(CONFIG_MPC8_DECODER) += mpc8.c mpc.c mpegaudiodec.c \

 237: mpegaudiodecheader.c mpegaudio.c \

 238: mpegaudiodata.c

 239: AVCODEC_C_FILES-$(CONFIG_MPEGVIDEO_DECODER) += mpeg12.c mpeg12data.c \

 240: mpegvideo.c error_resilience.c

 241: AVCODEC_C_FILES-$(CONFIG_MPEG_XVMC_DECODER) += mpegvideo_xvmc.c

 242: AVCODEC_C_FILES-$(CONFIG_MPEG1VIDEO_DECODER) += mpeg12.c mpeg12data.c \

 243: mpegvideo.c error_resilience.c

 244: AVCODEC_C_FILES-$(CONFIG_MPEG1VIDEO_ENCODER) += mpeg12enc.c mpegvideo_enc.c \

 245: motion_est.c ratecontrol.c \

 246: mpeg12.c mpeg12data.c \

 247: mpegvideo.c error_resilience.c

 248: AVCODEC_C_FILES-$(CONFIG_MPEG2_VAAPI_HWACCEL) += vaapi_mpeg2.c

 249: AVCODEC_C_FILES-$(CONFIG_MPEG2VIDEO_DECODER) += mpeg12.c mpeg12data.c \

 250: mpegvideo.c error_resilience.c

 251: AVCODEC_C_FILES-$(CONFIG_MPEG2VIDEO_ENCODER) += mpeg12enc.c mpegvideo_enc.c \

 252: motion_est.c ratecontrol.c \

 253: mpeg12.c mpeg12data.c \

 254: mpegvideo.c error_resilience.c

 255: AVCODEC_C_FILES-$(CONFIG_MPEG4_VAAPI_HWACCEL) += vaapi_mpeg4.c

 256: AVCODEC_C_FILES-$(CONFIG_MSMPEG4V1_DECODER) += msmpeg4.c msmpeg4data.c

 257: AVCODEC_C_FILES-$(CONFIG_MSMPEG4V1_ENCODER) += msmpeg4.c msmpeg4data.c h263dec.c \

 258: h263.c ituh263dec.c mpeg4videodec.c

 259: AVCODEC_C_FILES-$(CONFIG_MSMPEG4V2_DECODER) += msmpeg4.c msmpeg4data.c h263dec.c \

 260: h263.c ituh263dec.c mpeg4videodec.c

 261: AVCODEC_C_FILES-$(CONFIG_MSMPEG4V2_ENCODER) += msmpeg4.c msmpeg4data.c h263dec.c \

 262: h263.c ituh263dec.c mpeg4videodec.c

 263: AVCODEC_C_FILES-$(CONFIG_MSMPEG4V3_DECODER) += msmpeg4.c msmpeg4data.c h263dec.c \

 264: h263.c ituh263dec.c mpeg4videodec.c

 265: AVCODEC_C_FILES-$(CONFIG_MSMPEG4V3_ENCODER) += msmpeg4.c msmpeg4data.c h263dec.c \

 266: h263.c ituh263dec.c mpeg4videodec.c

 267: AVCODEC_C_FILES-$(CONFIG_MSRLE_DECODER) += msrle.c msrledec.c

 268: AVCODEC_C_FILES-$(CONFIG_MSVIDEO1_DECODER) += msvideo1.c

 269: AVCODEC_C_FILES-$(CONFIG_MSZH_DECODER) += lcldec.c

 270: AVCODEC_C_FILES-$(CONFIG_NELLYMOSER_DECODER) += nellymoserdec.c nellymoser.c

 271: AVCODEC_C_FILES-$(CONFIG_NELLYMOSER_ENCODER) += nellymoserenc.c nellymoser.c

 272: AVCODEC_C_FILES-$(CONFIG_NUV_DECODER) += nuv.c rtjpeg.c

 273: AVCODEC_C_FILES-$(CONFIG_PAM_DECODER) += pnmdec.c pnm.c

 274: AVCODEC_C_FILES-$(CONFIG_PAM_ENCODER) += pamenc.c pnm.c

 275: AVCODEC_C_FILES-$(CONFIG_PBM_DECODER) += pnmdec.c pnm.c

 276: AVCODEC_C_FILES-$(CONFIG_PBM_ENCODER) += pnmenc.c pnm.c

 277: AVCODEC_C_FILES-$(CONFIG_PCX_DECODER) += pcx.c

 278: AVCODEC_C_FILES-$(CONFIG_PCX_ENCODER) += pcxenc.c

 279: AVCODEC_C_FILES-$(CONFIG_PGM_DECODER) += pnmdec.c pnm.c

 280: AVCODEC_C_FILES-$(CONFIG_PGM_ENCODER) += pnmenc.c pnm.c

 281: AVCODEC_C_FILES-$(CONFIG_PGMYUV_DECODER) += pnmdec.c pnm.c

 282: AVCODEC_C_FILES-$(CONFIG_PGMYUV_ENCODER) += pnmenc.c pnm.c

 283: AVCODEC_C_FILES-$(CONFIG_PGSSUB_DECODER) += pgssubdec.c

 284: AVCODEC_C_FILES-$(CONFIG_PNG_DECODER) += png.c pngdec.c

 285: AVCODEC_C_FILES-$(CONFIG_PNG_ENCODER) += png.c pngenc.c

 286: AVCODEC_C_FILES-$(CONFIG_PPM_DECODER) += pnmdec.c pnm.c

 287: AVCODEC_C_FILES-$(CONFIG_PPM_ENCODER) += pnmenc.c pnm.c

 288: AVCODEC_C_FILES-$(CONFIG_PTX_DECODER) += ptx.c

 289: AVCODEC_C_FILES-$(CONFIG_QCELP_DECODER) += qcelpdec.c celp_math.c \

 290: celp_filters.c acelp_vectors.c \

 291: acelp_filters.c

 292: AVCODEC_C_FILES-$(CONFIG_QDM2_DECODER) += qdm2.c mpegaudiodec.c \

 293: mpegaudiodecheader.c mpegaudio.c \

 294: mpegaudiodata.c

 295: AVCODEC_C_FILES-$(CONFIG_QDRAW_DECODER) += qdrw.c

 296: AVCODEC_C_FILES-$(CONFIG_QPEG_DECODER) += qpeg.c

 297: AVCODEC_C_FILES-$(CONFIG_QTRLE_DECODER) += qtrle.c

 298: AVCODEC_C_FILES-$(CONFIG_QTRLE_ENCODER) += qtrleenc.c

 299: AVCODEC_C_FILES-$(CONFIG_R210_DECODER) += r210dec.c

 300: AVCODEC_C_FILES-$(CONFIG_RA_144_DECODER) += ra144.c celp_filters.c

 301: AVCODEC_C_FILES-$(CONFIG_RA_288_DECODER) += ra288.c celp_math.c celp_filters.c

 302: AVCODEC_C_FILES-$(CONFIG_RAWVIDEO_DECODER) += rawdec.c

 303: AVCODEC_C_FILES-$(CONFIG_RAWVIDEO_ENCODER) += rawenc.c

 304: AVCODEC_C_FILES-$(CONFIG_RL2_DECODER) += rl2.c

 305: AVCODEC_C_FILES-$(CONFIG_ROQ_DECODER) += roqvideodec.c roqvideo.c

 306: AVCODEC_C_FILES-$(CONFIG_ROQ_ENCODER) += roqvideoenc.c roqvideo.c elbg.c

 307: AVCODEC_C_FILES-$(CONFIG_ROQ_DPCM_DECODER) += dpcm.c

 308: AVCODEC_C_FILES-$(CONFIG_ROQ_DPCM_ENCODER) += roqaudioenc.c

 309: AVCODEC_C_FILES-$(CONFIG_RPZA_DECODER) += rpza.c

 310: AVCODEC_C_FILES-$(CONFIG_RV10_DECODER) += rv10.c

 311: AVCODEC_C_FILES-$(CONFIG_RV10_ENCODER) += rv10enc.c

 312: AVCODEC_C_FILES-$(CONFIG_RV20_DECODER) += rv10.c

 313: AVCODEC_C_FILES-$(CONFIG_RV20_ENCODER) += rv20enc.c

 314: AVCODEC_C_FILES-$(CONFIG_RV30_DECODER) += rv30.c rv34.c rv30dsp.c \

 315: mpegvideo.c error_resilience.c

 316: AVCODEC_C_FILES-$(CONFIG_RV40_DECODER) += rv40.c rv34.c rv40dsp.c \

 317: mpegvideo.c error_resilience.c

 318: AVCODEC_C_FILES-$(CONFIG_SGI_DECODER) += sgidec.c

 319: AVCODEC_C_FILES-$(CONFIG_SGI_ENCODER) += sgienc.c rle.c

 320: AVCODEC_C_FILES-$(CONFIG_SHORTEN_DECODER) += shorten.c

 321: AVCODEC_C_FILES-$(CONFIG_SIPR_DECODER) += sipr.c acelp_pitch_delay.c \

 322: celp_math.c acelp_vectors.c \

 323: acelp_filters.c celp_filters.c \

 324: sipr16k.c

 325: AVCODEC_C_FILES-$(CONFIG_SMACKAUD_DECODER) += smacker.c

 326: AVCODEC_C_FILES-$(CONFIG_SMACKER_DECODER) += smacker.c

 327: AVCODEC_C_FILES-$(CONFIG_SMC_DECODER) += smc.c

 328: AVCODEC_C_FILES-$(CONFIG_SNOW_DECODER) += snow.c rangecoder.c

 329: AVCODEC_C_FILES-$(CONFIG_SNOW_ENCODER) += snow.c rangecoder.c motion_est.c \

 330: ratecontrol.c h263.c \

 331: mpegvideo.c error_resilience.c \

 332: ituh263enc.c mpegvideo_enc.c \

 333: mpeg12data.c

 334: AVCODEC_C_FILES-$(CONFIG_SOL_DPCM_DECODER) += dpcm.c

 335: AVCODEC_C_FILES-$(CONFIG_SONIC_DECODER) += sonic.c

 336: AVCODEC_C_FILES-$(CONFIG_SONIC_ENCODER) += sonic.c

 337: AVCODEC_C_FILES-$(CONFIG_SONIC_LS_ENCODER) += sonic.c

 338: AVCODEC_C_FILES-$(CONFIG_SP5X_DECODER) += sp5xdec.c mjpegdec.c mjpeg.c

 339: AVCODEC_C_FILES-$(CONFIG_SUNRAST_DECODER) += sunrast.c

 340: AVCODEC_C_FILES-$(CONFIG_SVQ1_DECODER) += svq1dec.c svq1.c h263.c \

 341: mpegvideo.c error_resilience.c

 342: AVCODEC_C_FILES-$(CONFIG_SVQ1_ENCODER) += svq1enc.c svq1.c \

 343: motion_est.c h263.c \

 344: mpegvideo.c error_resilience.c \

 345: ituh263enc.c mpegvideo_enc.c \

 346: ratecontrol.c mpeg12data.c

 347: AVCODEC_C_FILES-$(CONFIG_SVQ3_DECODER) += h264.c svq3.c \

 348: h264_loopfilter.c h264_direct.c \

 349: h264_sei.c h264_ps.c h264_refs.c \

 350: h264_cavlc.c h264_cabac.c cabac.c \

 351: mpegvideo.c error_resilience.c \

 352: svq1dec.c svq1.c h263.c

 353: AVCODEC_C_FILES-$(CONFIG_TARGA_DECODER) += targa.c

 354: AVCODEC_C_FILES-$(CONFIG_TARGA_ENCODER) += targaenc.c rle.c

 355: AVCODEC_C_FILES-$(CONFIG_THEORA_DECODER) += xiph.c

 356: AVCODEC_C_FILES-$(CONFIG_THP_DECODER) += mjpegdec.c mjpeg.c

 357: AVCODEC_C_FILES-$(CONFIG_TIERTEXSEQVIDEO_DECODER) += tiertexseqv.c

 358: AVCODEC_C_FILES-$(CONFIG_TIFF_DECODER) += tiff.c lzw.c faxcompr.c

 359: AVCODEC_C_FILES-$(CONFIG_TIFF_ENCODER) += tiffenc.c rle.c lzwenc.c

 360: AVCODEC_C_FILES-$(CONFIG_TMV_DECODER) += tmv.c cga_data.c

 361: AVCODEC_C_FILES-$(CONFIG_TRUEMOTION1_DECODER) += truemotion1.c

 362: AVCODEC_C_FILES-$(CONFIG_TRUEMOTION2_DECODER) += truemotion2.c

 363: AVCODEC_C_FILES-$(CONFIG_TRUESPEECH_DECODER) += truespeech.c

 364: AVCODEC_C_FILES-$(CONFIG_TSCC_DECODER) += tscc.c msrledec.c

 365: AVCODEC_C_FILES-$(CONFIG_TTA_DECODER) += tta.c

 366: AVCODEC_C_FILES-$(CONFIG_TWINVQ_DECODER) += twinvq.c celp_math.c

 367: AVCODEC_C_FILES-$(CONFIG_TXD_DECODER) += txd.c s3tc.c

 368: AVCODEC_C_FILES-$(CONFIG_ULTI_DECODER) += ulti.c

 369: AVCODEC_C_FILES-$(CONFIG_V210_DECODER) += v210dec.c

 370: AVCODEC_C_FILES-$(CONFIG_V210_ENCODER) += v210enc.c

 371: AVCODEC_C_FILES-$(CONFIG_V210X_DECODER) += v210x.c

 372: AVCODEC_C_FILES-$(CONFIG_VB_DECODER) += vb.c

 373: AVCODEC_C_FILES-$(CONFIG_VC1_DECODER) += vc1dec.c vc1.c vc1data.c vc1dsp.c \

 374: msmpeg4.c msmpeg4data.c \

 375: intrax8.c intrax8dsp.c

 376: AVCODEC_C_FILES-$(CONFIG_VC1_DXVA2_HWACCEL) += dxva2_vc1.c

 377: AVCODEC_C_FILES-$(CONFIG_VC1_VAAPI_HWACCEL) += vaapi_vc1.c

 378: AVCODEC_C_FILES-$(CONFIG_VCR1_DECODER) += vcr1.c

 379: AVCODEC_C_FILES-$(CONFIG_VCR1_ENCODER) += vcr1.c

 380: AVCODEC_C_FILES-$(CONFIG_VMDAUDIO_DECODER) += vmdav.c

 381: AVCODEC_C_FILES-$(CONFIG_VMDVIDEO_DECODER) += vmdav.c

 382: AVCODEC_C_FILES-$(CONFIG_VMNC_DECODER) += vmnc.c

 383: AVCODEC_C_FILES-$(CONFIG_VORBIS_DECODER) += vorbis_dec.c vorbis.c \

 384: vorbis_data.c xiph.c

 385: AVCODEC_C_FILES-$(CONFIG_VORBIS_ENCODER) += vorbis_enc.c vorbis.c \

 386: vorbis_data.c

 387: AVCODEC_C_FILES-$(CONFIG_VP3_DECODER) += vp3.c vp3dsp.c

 388: AVCODEC_C_FILES-$(CONFIG_VP5_DECODER) += vp5.c vp56.c vp56data.c vp56dsp.c \

 389: vp3dsp.c

 390: AVCODEC_C_FILES-$(CONFIG_VP6_DECODER) += vp6.c vp56.c vp56data.c vp56dsp.c \

 391: vp3dsp.c vp6dsp.c huffman.c

 392: AVCODEC_C_FILES-$(CONFIG_VQA_DECODER) += vqavideo.c

 393: AVCODEC_C_FILES-$(CONFIG_WAVPACK_DECODER) += wavpack.c

 394: AVCODEC_C_FILES-$(CONFIG_WMAPRO_DECODER) += wmaprodec.c wma.c

 395: AVCODEC_C_FILES-$(CONFIG_WMAV1_DECODER) += wmadec.c wma.c aactab.c

 396: AVCODEC_C_FILES-$(CONFIG_WMAV1_ENCODER) += wmaenc.c wma.c aactab.c

 397: AVCODEC_C_FILES-$(CONFIG_WMAV2_DECODER) += wmadec.c wma.c aactab.c

 398: AVCODEC_C_FILES-$(CONFIG_WMAV2_ENCODER) += wmaenc.c wma.c aactab.c

 399: AVCODEC_C_FILES-$(CONFIG_WMAVOICE_DECODER) += wmavoice.c \

 400: celp_math.c celp_filters.c \

 401: acelp_vectors.c acelp_filters.c

 402: AVCODEC_C_FILES-$(CONFIG_WMV1_DECODER) += msmpeg4.c msmpeg4data.c

 403: AVCODEC_C_FILES-$(CONFIG_WMV2_DECODER) += wmv2dec.c wmv2.c \

 404: msmpeg4.c msmpeg4data.c \

 405: intrax8.c intrax8dsp.c

 406: AVCODEC_C_FILES-$(CONFIG_WMV2_ENCODER) += wmv2enc.c wmv2.c \

 407: msmpeg4.c msmpeg4data.c \

 408: mpeg4videodec.c ituh263dec.c h263dec.c

 409: AVCODEC_C_FILES-$(CONFIG_WNV1_DECODER) += wnv1.c

 410: AVCODEC_C_FILES-$(CONFIG_WS_SND1_DECODER) += ws-snd1.c

 411: AVCODEC_C_FILES-$(CONFIG_XAN_DPCM_DECODER) += dpcm.c

 412: AVCODEC_C_FILES-$(CONFIG_XAN_WC3_DECODER) += xan.c

 413: AVCODEC_C_FILES-$(CONFIG_XAN_WC4_DECODER) += xan.c

 414: AVCODEC_C_FILES-$(CONFIG_XL_DECODER) += xl.c

 415: AVCODEC_C_FILES-$(CONFIG_XSUB_DECODER) += xsubdec.c

 416: AVCODEC_C_FILES-$(CONFIG_XSUB_ENCODER) += xsubenc.c

 417: AVCODEC_C_FILES-$(CONFIG_YOP_DECODER) += yop.c

 418: AVCODEC_C_FILES-$(CONFIG_ZLIB_DECODER) += lcldec.c

 419: AVCODEC_C_FILES-$(CONFIG_ZLIB_ENCODER) += lclenc.c

 420: AVCODEC_C_FILES-$(CONFIG_ZMBV_DECODER) += zmbv.c

 421: AVCODEC_C_FILES-$(CONFIG_ZMBV_ENCODER) += zmbvenc.c

 422:  

 423: AVCODEC_C_FILES-$(CONFIG_PCM_ALAW_DECODER) += pcm.c

 424: AVCODEC_C_FILES-$(CONFIG_PCM_ALAW_ENCODER) += pcm.c

 425: AVCODEC_C_FILES-$(CONFIG_PCM_BLURAY_DECODER) += pcm-mpeg.c

 426: AVCODEC_C_FILES-$(CONFIG_PCM_DVD_DECODER) += pcm.c

 427: AVCODEC_C_FILES-$(CONFIG_PCM_DVD_ENCODER) += pcm.c

 428: AVCODEC_C_FILES-$(CONFIG_PCM_F32BE_DECODER) += pcm.c

 429: AVCODEC_C_FILES-$(CONFIG_PCM_F32BE_ENCODER) += pcm.c

 430: AVCODEC_C_FILES-$(CONFIG_PCM_F32LE_DECODER) += pcm.c

 431: AVCODEC_C_FILES-$(CONFIG_PCM_F32LE_ENCODER) += pcm.c

 432: AVCODEC_C_FILES-$(CONFIG_PCM_F64BE_DECODER) += pcm.c

 433: AVCODEC_C_FILES-$(CONFIG_PCM_F64BE_ENCODER) += pcm.c

 434: AVCODEC_C_FILES-$(CONFIG_PCM_F64LE_DECODER) += pcm.c

 435: AVCODEC_C_FILES-$(CONFIG_PCM_F64LE_ENCODER) += pcm.c

 436: AVCODEC_C_FILES-$(CONFIG_PCM_MULAW_DECODER) += pcm.c

 437: AVCODEC_C_FILES-$(CONFIG_PCM_MULAW_ENCODER) += pcm.c

 438: AVCODEC_C_FILES-$(CONFIG_PCM_S8_DECODER) += pcm.c

 439: AVCODEC_C_FILES-$(CONFIG_PCM_S8_ENCODER) += pcm.c

 440: AVCODEC_C_FILES-$(CONFIG_PCM_S16BE_DECODER) += pcm.c

 441: AVCODEC_C_FILES-$(CONFIG_PCM_S16BE_ENCODER) += pcm.c

 442: AVCODEC_C_FILES-$(CONFIG_PCM_S16LE_DECODER) += pcm.c

 443: AVCODEC_C_FILES-$(CONFIG_PCM_S16LE_ENCODER) += pcm.c

 444: AVCODEC_C_FILES-$(CONFIG_PCM_S16LE_PLANAR_DECODER) += pcm.c

 445: AVCODEC_C_FILES-$(CONFIG_PCM_S24BE_DECODER) += pcm.c

 446: AVCODEC_C_FILES-$(CONFIG_PCM_S24BE_ENCODER) += pcm.c

 447: AVCODEC_C_FILES-$(CONFIG_PCM_S24DAUD_DECODER) += pcm.c

 448: AVCODEC_C_FILES-$(CONFIG_PCM_S24DAUD_ENCODER) += pcm.c

 449: AVCODEC_C_FILES-$(CONFIG_PCM_S24LE_DECODER) += pcm.c

 450: AVCODEC_C_FILES-$(CONFIG_PCM_S24LE_ENCODER) += pcm.c

 451: AVCODEC_C_FILES-$(CONFIG_PCM_S32BE_DECODER) += pcm.c

 452: AVCODEC_C_FILES-$(CONFIG_PCM_S32BE_ENCODER) += pcm.c

 453: AVCODEC_C_FILES-$(CONFIG_PCM_S32LE_DECODER) += pcm.c

 454: AVCODEC_C_FILES-$(CONFIG_PCM_S32LE_ENCODER) += pcm.c

 455: AVCODEC_C_FILES-$(CONFIG_PCM_U8_DECODER) += pcm.c

 456: AVCODEC_C_FILES-$(CONFIG_PCM_U8_ENCODER) += pcm.c

 457: AVCODEC_C_FILES-$(CONFIG_PCM_U16BE_DECODER) += pcm.c

 458: AVCODEC_C_FILES-$(CONFIG_PCM_U16BE_ENCODER) += pcm.c

 459: AVCODEC_C_FILES-$(CONFIG_PCM_U16LE_DECODER) += pcm.c

 460: AVCODEC_C_FILES-$(CONFIG_PCM_U16LE_ENCODER) += pcm.c

 461: AVCODEC_C_FILES-$(CONFIG_PCM_U24BE_DECODER) += pcm.c

 462: AVCODEC_C_FILES-$(CONFIG_PCM_U24BE_ENCODER) += pcm.c

 463: AVCODEC_C_FILES-$(CONFIG_PCM_U24LE_DECODER) += pcm.c

 464: AVCODEC_C_FILES-$(CONFIG_PCM_U24LE_ENCODER) += pcm.c

 465: AVCODEC_C_FILES-$(CONFIG_PCM_U32BE_DECODER) += pcm.c

 466: AVCODEC_C_FILES-$(CONFIG_PCM_U32BE_ENCODER) += pcm.c

 467: AVCODEC_C_FILES-$(CONFIG_PCM_U32LE_DECODER) += pcm.c

 468: AVCODEC_C_FILES-$(CONFIG_PCM_U32LE_ENCODER) += pcm.c

 469: AVCODEC_C_FILES-$(CONFIG_PCM_ZORK_DECODER) += pcm.c

 470: AVCODEC_C_FILES-$(CONFIG_PCM_ZORK_ENCODER) += pcm.c

 471:  

 472: AVCODEC_C_FILES-$(CONFIG_ADPCM_4XM_DECODER) += adpcm.c

 473: AVCODEC_C_FILES-$(CONFIG_ADPCM_ADX_DECODER) += adxdec.c

 474: AVCODEC_C_FILES-$(CONFIG_ADPCM_ADX_ENCODER) += adxenc.c

 475: AVCODEC_C_FILES-$(CONFIG_ADPCM_CT_DECODER) += adpcm.c

 476: AVCODEC_C_FILES-$(CONFIG_ADPCM_EA_DECODER) += adpcm.c

 477: AVCODEC_C_FILES-$(CONFIG_ADPCM_EA_MAXIS_XA_DECODER) += adpcm.c

 478: AVCODEC_C_FILES-$(CONFIG_ADPCM_EA_R1_DECODER) += adpcm.c

 479: AVCODEC_C_FILES-$(CONFIG_ADPCM_EA_R2_DECODER) += adpcm.c

 480: AVCODEC_C_FILES-$(CONFIG_ADPCM_EA_R3_DECODER) += adpcm.c

 481: AVCODEC_C_FILES-$(CONFIG_ADPCM_EA_XAS_DECODER) += adpcm.c

 482: AVCODEC_C_FILES-$(CONFIG_ADPCM_G726_DECODER) += g726.c

 483: AVCODEC_C_FILES-$(CONFIG_ADPCM_G726_ENCODER) += g726.c

 484: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_AMV_DECODER) += adpcm.c

 485: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_DK3_DECODER) += adpcm.c

 486: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_DK4_DECODER) += adpcm.c

 487: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_EA_EACS_DECODER) += adpcm.c

 488: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_EA_SEAD_DECODER) += adpcm.c

 489: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_ISS_DECODER) += adpcm.c

 490: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_QT_DECODER) += adpcm.c

 491: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_QT_ENCODER) += adpcm.c

 492: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_SMJPEG_DECODER) += adpcm.c

 493: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_WAV_DECODER) += adpcm.c

 494: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_WAV_ENCODER) += adpcm.c

 495: AVCODEC_C_FILES-$(CONFIG_ADPCM_IMA_WS_DECODER) += adpcm.c

 496: AVCODEC_C_FILES-$(CONFIG_ADPCM_MS_DECODER) += adpcm.c

 497: AVCODEC_C_FILES-$(CONFIG_ADPCM_MS_ENCODER) += adpcm.c

 498: AVCODEC_C_FILES-$(CONFIG_ADPCM_SBPRO_2_DECODER) += adpcm.c

 499: AVCODEC_C_FILES-$(CONFIG_ADPCM_SBPRO_3_DECODER) += adpcm.c

 500: AVCODEC_C_FILES-$(CONFIG_ADPCM_SBPRO_4_DECODER) += adpcm.c

 501: AVCODEC_C_FILES-$(CONFIG_ADPCM_SWF_DECODER) += adpcm.c

 502: AVCODEC_C_FILES-$(CONFIG_ADPCM_SWF_ENCODER) += adpcm.c

 503: AVCODEC_C_FILES-$(CONFIG_ADPCM_THP_DECODER) += adpcm.c

 504: AVCODEC_C_FILES-$(CONFIG_ADPCM_XA_DECODER) += adpcm.c

 505: AVCODEC_C_FILES-$(CONFIG_ADPCM_YAMAHA_DECODER) += adpcm.c

 506: AVCODEC_C_FILES-$(CONFIG_ADPCM_YAMAHA_ENCODER) += adpcm.c

 507:  

 508: AVCODEC_C_FILES-$(CONFIG_ADTS_MUXER) += mpeg4audio.c

 509: AVCODEC_C_FILES-$(CONFIG_CAF_DEMUXER) += mpeg4audio.c mpegaudiodata.c

 510: AVCODEC_C_FILES-$(CONFIG_DV_DEMUXER) += dvdata.c

 511: AVCODEC_C_FILES-$(CONFIG_DV_MUXER) += dvdata.c

 512: AVCODEC_C_FILES-$(CONFIG_FLAC_DEMUXER) += flacdec.c flacdata.c flac.c

 513: AVCODEC_C_FILES-$(CONFIG_FLAC_MUXER) += flacdec.c flacdata.c flac.c

 514: AVCODEC_C_FILES-$(CONFIG_FLV_DEMUXER) += mpeg4audio.c

 515: AVCODEC_C_FILES-$(CONFIG_GXF_DEMUXER) += mpeg12data.c

 516: AVCODEC_C_FILES-$(CONFIG_IFF_DEMUXER) += iff.c

 517: AVCODEC_C_FILES-$(CONFIG_MATROSKA_AUDIO_MUXER) += xiph.c mpeg4audio.c \

 518: flacdec.c flacdata.c flac.c

 519: AVCODEC_C_FILES-$(CONFIG_MATROSKA_DEMUXER) += mpeg4audio.c

 520: AVCODEC_C_FILES-$(CONFIG_MATROSKA_MUXER) += xiph.c mpeg4audio.c \

 521: flacdec.c flacdata.c flac.c

 522: AVCODEC_C_FILES-$(CONFIG_MOV_DEMUXER) += mpeg4audio.c mpegaudiodata.c

 523: AVCODEC_C_FILES-$(CONFIG_MPEGTS_MUXER) += mpegvideo.c mpeg4audio.c

 524: AVCODEC_C_FILES-$(CONFIG_NUT_MUXER) += mpegaudiodata.c

 525: AVCODEC_C_FILES-$(CONFIG_OGG_DEMUXER) += flacdec.c flacdata.c flac.c \

 526: dirac.c mpeg12data.c

 527: AVCODEC_C_FILES-$(CONFIG_OGG_MUXER) += xiph.c flacdec.c flacdata.c flac.c

 528: AVCODEC_C_FILES-$(CONFIG_RTP_MUXER) += mpegvideo.c

 529: AVCODEC_C_FILES-$(CONFIG_WEBM_MUXER) += xiph.c mpeg4audio.c \

 530: flacdec.c flacdata.c flac.c

 531:  

 532: AVCODEC_C_FILES-$(CONFIG_LIBDIRAC_DECODER) += libdiracdec.c

 533: AVCODEC_C_FILES-$(CONFIG_LIBDIRAC_ENCODER) += libdiracenc.c libdirac_libschro.c

 534: AVCODEC_C_FILES-$(CONFIG_LIBFAAC_ENCODER) += libfaac.c

 535: AVCODEC_C_FILES-$(CONFIG_LIBFAAD_DECODER) += libfaad.c

 536: AVCODEC_C_FILES-$(CONFIG_LIBGSM_DECODER) += libgsm.c

 537: AVCODEC_C_FILES-$(CONFIG_LIBGSM_ENCODER) += libgsm.c

 538: AVCODEC_C_FILES-$(CONFIG_LIBGSM_MS_DECODER) += libgsm.c

 539: AVCODEC_C_FILES-$(CONFIG_LIBGSM_MS_ENCODER) += libgsm.c

 540: AVCODEC_C_FILES-$(CONFIG_LIBMP3LAME_ENCODER) += libmp3lame.c

 541: AVCODEC_C_FILES-$(CONFIG_LIBOPENCORE_AMRNB_DECODER) += libopencore-amr.c

 542: AVCODEC_C_FILES-$(CONFIG_LIBOPENCORE_AMRNB_ENCODER) += libopencore-amr.c

 543: AVCODEC_C_FILES-$(CONFIG_LIBOPENCORE_AMRWB_DECODER) += libopencore-amr.c

 544: AVCODEC_C_FILES-$(CONFIG_LIBOPENJPEG_DECODER) += libopenjpeg.c

 545: AVCODEC_C_FILES-$(CONFIG_LIBSCHROEDINGER_DECODER) += libschroedingerdec.c \

 546: libschroedinger.c \

 547: libdirac_libschro.c

 548: AVCODEC_C_FILES-$(CONFIG_LIBSCHROEDINGER_ENCODER) += libschroedingerenc.c \

 549: libschroedinger.c \

 550: libdirac_libschro.c

 551: AVCODEC_C_FILES-$(CONFIG_LIBSPEEX_DECODER) += libspeexdec.c

 552: AVCODEC_C_FILES-$(CONFIG_LIBTHEORA_ENCODER) += libtheoraenc.c

 553: AVCODEC_C_FILES-$(CONFIG_LIBVORBIS_ENCODER) += libvorbis.c

 554: AVCODEC_C_FILES-$(CONFIG_LIBVPX_DECODER) += libvpxdec.c

 555: AVCODEC_C_FILES-$(CONFIG_LIBVPX_ENCODER) += libvpxenc.c

 556: AVCODEC_C_FILES-$(CONFIG_LIBX264_ENCODER) += libx264.c

 557: AVCODEC_C_FILES-$(CONFIG_LIBXVID_ENCODER) += libxvidff.c libxvid_rc.c

 558:  

 559: AVCODEC_C_FILES-$(CONFIG_AAC_PARSER) += aac_parser.c aac_ac3_parser.c \

 560: mpeg4audio.c

 561: AVCODEC_C_FILES-$(CONFIG_AC3_PARSER) += ac3_parser.c ac3tab.c \

 562: aac_ac3_parser.c

 563: AVCODEC_C_FILES-$(CONFIG_CAVSVIDEO_PARSER) += cavs_parser.c

 564: AVCODEC_C_FILES-$(CONFIG_DCA_PARSER) += dca_parser.c

 565: AVCODEC_C_FILES-$(CONFIG_DIRAC_PARSER) += dirac_parser.c

 566: AVCODEC_C_FILES-$(CONFIG_DNXHD_PARSER) += dnxhd_parser.c

 567: AVCODEC_C_FILES-$(CONFIG_DVBSUB_PARSER) += dvbsub_parser.c

 568: AVCODEC_C_FILES-$(CONFIG_DVDSUB_PARSER) += dvdsub_parser.c

 569: AVCODEC_C_FILES-$(CONFIG_H261_PARSER) += h261_parser.c

 570: AVCODEC_C_FILES-$(CONFIG_H263_PARSER) += h263_parser.c

 571: AVCODEC_C_FILES-$(CONFIG_H264_PARSER) += h264_parser.c h264.c \

 572: cabac.c \

 573: h264_refs.c h264_sei.c h264_direct.c \

 574: h264_loopfilter.c h264_cabac.c \

 575: h264_cavlc.c h264_ps.c \

 576: mpegvideo.c error_resilience.c

 577: AVCODEC_C_FILES-$(CONFIG_MJPEG_PARSER) += mjpeg_parser.c

 578: AVCODEC_C_FILES-$(CONFIG_MLP_PARSER) += mlp_parser.c mlp.c

 579: AVCODEC_C_FILES-$(CONFIG_MPEG4VIDEO_PARSER) += mpeg4video_parser.c h263.c \

 580: mpegvideo.c error_resilience.c \

 581: mpeg4videodec.c mpeg4video.c \

 582: ituh263dec.c h263dec.c

 583: AVCODEC_C_FILES-$(CONFIG_MPEGAUDIO_PARSER) += mpegaudio_parser.c \

 584: mpegaudiodecheader.c mpegaudiodata.c

 585: AVCODEC_C_FILES-$(CONFIG_MPEGVIDEO_PARSER) += mpegvideo_parser.c \

 586: mpeg12.c mpeg12data.c \

 587: mpegvideo.c error_resilience.c

 588: AVCODEC_C_FILES-$(CONFIG_PNM_PARSER) += pnm_parser.c pnm.c

 589: AVCODEC_C_FILES-$(CONFIG_VC1_PARSER) += vc1_parser.c vc1.c vc1data.c \

 590: msmpeg4.c msmpeg4data.c mpeg4video.c \

 591: h263.c mpegvideo.c error_resilience.c

 592: AVCODEC_C_FILES-$(CONFIG_VP3_PARSER) += vp3_parser.c

 593:  

 594: AVCODEC_C_FILES-$(CONFIG_AAC_ADTSTOASC_BSF) += aac_adtstoasc_bsf.c

 595: AVCODEC_C_FILES-$(CONFIG_DUMP_EXTRADATA_BSF) += dump_extradata_bsf.c

 596: AVCODEC_C_FILES-$(CONFIG_H264_MP4TOANNEXB_BSF) += h264_mp4toannexb_bsf.c

 597: AVCODEC_C_FILES-$(CONFIG_IMX_DUMP_HEADER_BSF) += imx_dump_header_bsf.c

 598: AVCODEC_C_FILES-$(CONFIG_MJPEGA_DUMP_HEADER_BSF) += mjpega_dump_header_bsf.c

 599: AVCODEC_C_FILES-$(CONFIG_MOV2TEXTSUB_BSF) += movsub_bsf.c

 600: AVCODEC_C_FILES-$(CONFIG_MP3_HEADER_COMPRESS_BSF) += mp3_header_compress_bsf.c

 601: AVCODEC_C_FILES-$(CONFIG_MP3_HEADER_DECOMPRESS_BSF) += mp3_header_decompress_bsf.c \

 602: mpegaudiodata.c

 603: AVCODEC_C_FILES-$(CONFIG_NOISE_BSF) += noise_bsf.c

 604: AVCODEC_C_FILES-$(CONFIG_REMOVE_EXTRADATA_BSF) += remove_extradata_bsf.c

 605: AVCODEC_C_FILES-$(CONFIG_TEXT2MOVSUB_BSF) += movsub_bsf.c

 606:  

 607: AVCODEC_C_FILES-$(HAVE_BEOSTHREADS) += beosthread.c

 608: AVCODEC_C_FILES-$(HAVE_OS2THREADS) += os2thread.c

 609: AVCODEC_C_FILES-$(HAVE_PTHREADS) += pthread.c

 610: AVCODEC_C_FILES-$(HAVE_W32THREADS) += w32thread.c

 611:  

 612: AVCODEC_C_FILES-$(CONFIG_MLIB) += mlib/dsputil_mlib.c \

 613:  

 614: AVCODEC_C_FILES += $(AVCODEC_C_FILES-yes)

 615:  

 616: AVCODEC_SRC_FILES = $(addprefix libavcodec/, $(sort $(AVCODEC_C_FILES)))

 617:  

 618: AVCODEC_ARM_C_FILES-$(CONFIG_DCA_DECODER) += arm/dcadsp_init_arm.c \

 619:  

 620: AVCODEC_ARM_C_FILES-$(CONFIG_VP5_DECODER) += arm/vp56dsp_init_arm.c

 621: AVCODEC_ARM_C_FILES-$(CONFIG_VP6_DECODER) += arm/vp56dsp_init_arm.c

 622:  

 623: AVCODEC_ARM_C_FILES-$(CONFIG_H264DSP) += arm/h264dsp_init_arm.c \

 624: arm/h264pred_init_arm.c \

 625:  

 626: AVCODEC_ARM_C_FILES += arm/dsputil_init_arm.c \

 627: arm/dsputil_arm.S \

 628: arm/fft_init_arm.c \

 629: arm/jrevdct_arm.S \

 630: arm/mpegvideo_arm.c \

 631: arm/simple_idct_arm.S \

 632:  

 633: AVCODEC_ARM_C_FILES-$(HAVE_ARMV5TE) += arm/dsputil_init_armv5te.c \

 634: arm/mpegvideo_armv5te.c \

 635: arm/mpegvideo_armv5te_s.S \

 636: arm/simple_idct_armv5te.S \

 637:  

 638: AVCODEC_ARM_C_FILES-$(HAVE_ARMV6) += arm/dsputil_init_armv6.c \

 639: arm/dsputil_armv6.S \

 640: arm/simple_idct_armv6.S \

 641:  

 642: AVCODEC_ARM_C_FILES-$(HAVE_ARMVFP) += arm/dsputil_vfp.S \

 643: arm/dsputil_init_vfp.c \

 644:  

 645: AVCODEC_ARM_C_FILES-$(HAVE_IWMMXT) += arm/dsputil_iwmmxt.c \

 646: arm/mpegvideo_iwmmxt.c \

 647:  

 648: NEON-FILES-$(CONFIG_FFT) += arm/fft_neon.S.neon \

 649:  

 650: NEON-FILES-$(CONFIG_MDCT) += arm/mdct_neon.S.neon \

 651:  

 652: NEON-FILES-$(CONFIG_RDFT) += arm/rdft_neon.S.neon \

 653:  

 654: NEON-FILES-$(CONFIG_H264DSP) += arm/h264dsp_neon.S.neon \

 655: arm/h264idct_neon.S.neon \

 656: arm/h264pred_neon.S.neon \

 657:  

 658: NEON-FILES-$(CONFIG_DCA_DECODER) += arm/dcadsp_neon.S.neon \

 659: arm/synth_filter_neon.S.neon \

 660:  

 661: NEON-FILES-$(CONFIG_VP3_DECODER) += arm/vp3dsp_neon.S.neon

 662:  

 663: NEON-FILES-$(CONFIG_VP5_DECODER) += arm/vp56dsp_neon.S.neon

 664: NEON-FILES-$(CONFIG_VP6_DECODER) += arm/vp56dsp_neon.S.neon

 665:  

 666: AVCODEC_ARM_C_FILES-$(HAVE_NEON) += arm/dsputil_init_neon.c.neon.neon.neon.neon.neon.neon \

 667: arm/dsputil_neon.S.neon \

 668: arm/int_neon.S.neon \

 669: arm/simple_idct_neon.S.neon \

 670: $(NEON-FILES-yes)

 671:  

 672:  

 673: AVCODEC_ARM_C_FILES += $(AVCODEC_ARM_C_FILES-yes)

 674:  

 675: AVCODEC_ARM_SRC_FILES = $(addprefix libavcodec/, $(sort $(AVCODEC_ARM_C_FILES)))

 676:  

 677: AVFORMAT_C_FILES = allformats.c \

 678: cutils.c \

 679: metadata.c \

 680: metadata_compat.c \

 681: options.c \

 682: os_support.c \

 683: sdp.c \

 684: seek.c \

 685: utils.c \

 686:  

 687: AVFORMAT_C_FILES-$(CONFIG_AAC_DEMUXER) += raw.c id3v1.c id3v2.c

 688: AVFORMAT_C_FILES-$(CONFIG_AC3_DEMUXER) += raw.c

 689: AVFORMAT_C_FILES-$(CONFIG_AC3_MUXER) += raw.c

 690: AVFORMAT_C_FILES-$(CONFIG_ADTS_MUXER) += adtsenc.c

 691: AVFORMAT_C_FILES-$(CONFIG_AEA_DEMUXER) += aea.c raw.c

 692: AVFORMAT_C_FILES-$(CONFIG_AIFF_DEMUXER) += aiffdec.c riff.c raw.c

 693: AVFORMAT_C_FILES-$(CONFIG_AIFF_MUXER) += aiffenc.c riff.c

 694: AVFORMAT_C_FILES-$(CONFIG_AMR_DEMUXER) += amr.c

 695: AVFORMAT_C_FILES-$(CONFIG_AMR_MUXER) += amr.c

 696: AVFORMAT_C_FILES-$(CONFIG_ANM_DEMUXER) += anm.c

 697: AVFORMAT_C_FILES-$(CONFIG_APC_DEMUXER) += apc.c

 698: AVFORMAT_C_FILES-$(CONFIG_APE_DEMUXER) += ape.c apetag.c

 699: AVFORMAT_C_FILES-$(CONFIG_ASF_DEMUXER) += asfdec.c asf.c asfcrypt.c \

 700: riff.c avlanguage.c

 701: AVFORMAT_C_FILES-$(CONFIG_ASF_MUXER) += asfenc.c asf.c riff.c

 702: AVFORMAT_C_FILES-$(CONFIG_ASS_DEMUXER) += assdec.c

 703: AVFORMAT_C_FILES-$(CONFIG_ASS_MUXER) += assenc.c

 704: AVFORMAT_C_FILES-$(CONFIG_AU_DEMUXER) += au.c raw.c

 705: AVFORMAT_C_FILES-$(CONFIG_AU_MUXER) += au.c

 706: AVFORMAT_C_FILES-$(CONFIG_AVI_DEMUXER) += avidec.c riff.c avi.c

 707: AVFORMAT_C_FILES-$(CONFIG_AVI_MUXER) += avienc.c riff.c avi.c

 708: AVFORMAT_C_FILES-$(CONFIG_AVISYNTH) += avisynth.c

 709: AVFORMAT_C_FILES-$(CONFIG_AVM2_MUXER) += swfenc.c

 710: AVFORMAT_C_FILES-$(CONFIG_AVS_DEMUXER) += avs.c vocdec.c voc.c

 711: AVFORMAT_C_FILES-$(CONFIG_BETHSOFTVID_DEMUXER) += bethsoftvid.c

 712: AVFORMAT_C_FILES-$(CONFIG_BFI_DEMUXER) += bfi.c

 713: AVFORMAT_C_FILES-$(CONFIG_BINK_DEMUXER) += bink.c

 714: AVFORMAT_C_FILES-$(CONFIG_C93_DEMUXER) += c93.c vocdec.c voc.c

 715: AVFORMAT_C_FILES-$(CONFIG_CAF_DEMUXER) += cafdec.c caf.c mov.c riff.c isom.c

 716: AVFORMAT_C_FILES-$(CONFIG_CAVSVIDEO_DEMUXER) += raw.c

 717: AVFORMAT_C_FILES-$(CONFIG_CDG_DEMUXER) += cdg.c

 718: AVFORMAT_C_FILES-$(CONFIG_CRC_MUXER) += crcenc.c

 719: AVFORMAT_C_FILES-$(CONFIG_DAUD_DEMUXER) += daud.c

 720: AVFORMAT_C_FILES-$(CONFIG_DAUD_MUXER) += daud.c

 721: AVFORMAT_C_FILES-$(CONFIG_DIRAC_DEMUXER) += raw.c

 722: AVFORMAT_C_FILES-$(CONFIG_DIRAC_MUXER) += raw.c

 723: AVFORMAT_C_FILES-$(CONFIG_DNXHD_DEMUXER) += raw.c

 724: AVFORMAT_C_FILES-$(CONFIG_DNXHD_MUXER) += raw.c

 725: AVFORMAT_C_FILES-$(CONFIG_DSICIN_DEMUXER) += dsicin.c

 726: AVFORMAT_C_FILES-$(CONFIG_DTS_DEMUXER) += raw.c id3v2.c

 727: AVFORMAT_C_FILES-$(CONFIG_DTS_MUXER) += raw.c

 728: AVFORMAT_C_FILES-$(CONFIG_DV_DEMUXER) += dv.c

 729: AVFORMAT_C_FILES-$(CONFIG_DV_MUXER) += dvenc.c

 730: AVFORMAT_C_FILES-$(CONFIG_DXA_DEMUXER) += dxa.c riff.c

 731: AVFORMAT_C_FILES-$(CONFIG_EA_CDATA_DEMUXER) += eacdata.c

 732: AVFORMAT_C_FILES-$(CONFIG_EA_DEMUXER) += electronicarts.c

 733: AVFORMAT_C_FILES-$(CONFIG_EAC3_DEMUXER) += raw.c id3v2.c

 734: AVFORMAT_C_FILES-$(CONFIG_EAC3_MUXER) += raw.c

 735: AVFORMAT_C_FILES-$(CONFIG_FFM_DEMUXER) += ffmdec.c

 736: AVFORMAT_C_FILES-$(CONFIG_FFM_MUXER) += ffmenc.c

 737: AVFORMAT_C_FILES-$(CONFIG_FILMSTRIP_DEMUXER) += filmstripdec.c

 738: AVFORMAT_C_FILES-$(CONFIG_FILMSTRIP_MUXER) += filmstripenc.c

 739: AVFORMAT_C_FILES-$(CONFIG_FLAC_DEMUXER) += flacdec.c raw.c id3v1.c \

 740: id3v2.c oggparsevorbis.c \

 741: vorbiscomment.c

 742: AVFORMAT_C_FILES-$(CONFIG_FLAC_MUXER) += flacenc.c flacenc_header.c \

 743: vorbiscomment.c

 744: AVFORMAT_C_FILES-$(CONFIG_FLIC_DEMUXER) += flic.c

 745: AVFORMAT_C_FILES-$(CONFIG_FLV_DEMUXER) += flvdec.c

 746: AVFORMAT_C_FILES-$(CONFIG_FLV_MUXER) += flvenc.c avc.c

 747: AVFORMAT_C_FILES-$(CONFIG_FOURXM_DEMUXER) += 4xm.c

 748: AVFORMAT_C_FILES-$(CONFIG_FRAMECRC_MUXER) += framecrcenc.c

 749: AVFORMAT_C_FILES-$(CONFIG_GIF_MUXER) += gif.c

 750: AVFORMAT_C_FILES-$(CONFIG_GSM_DEMUXER) += raw.c id3v2.c

 751: AVFORMAT_C_FILES-$(CONFIG_GXF_DEMUXER) += gxf.c

 752: AVFORMAT_C_FILES-$(CONFIG_GXF_MUXER) += gxfenc.c audiointerleave.c

 753: AVFORMAT_C_FILES-$(CONFIG_H261_DEMUXER) += raw.c

 754: AVFORMAT_C_FILES-$(CONFIG_H261_MUXER) += raw.c

 755: AVFORMAT_C_FILES-$(CONFIG_H263_DEMUXER) += raw.c

 756: AVFORMAT_C_FILES-$(CONFIG_H263_MUXER) += raw.c

 757: AVFORMAT_C_FILES-$(CONFIG_H264_DEMUXER) += raw.c

 758: AVFORMAT_C_FILES-$(CONFIG_H264_MUXER) += raw.c

 759: AVFORMAT_C_FILES-$(CONFIG_IDCIN_DEMUXER) += idcin.c

 760: AVFORMAT_C_FILES-$(CONFIG_IFF_DEMUXER) += iff.c

 761: AVFORMAT_C_FILES-$(CONFIG_IMAGE2_DEMUXER) += img2.c

 762: AVFORMAT_C_FILES-$(CONFIG_IMAGE2_MUXER) += img2.c

 763: AVFORMAT_C_FILES-$(CONFIG_IMAGE2PIPE_DEMUXER) += img2.c

 764: AVFORMAT_C_FILES-$(CONFIG_IMAGE2PIPE_MUXER) += img2.c

 765: AVFORMAT_C_FILES-$(CONFIG_INGENIENT_DEMUXER) += raw.c

 766: AVFORMAT_C_FILES-$(CONFIG_IPMOVIE_DEMUXER) += ipmovie.c

 767: AVFORMAT_C_FILES-$(CONFIG_ISS_DEMUXER) += iss.c

 768: AVFORMAT_C_FILES-$(CONFIG_IV8_DEMUXER) += iv8.c

 769: AVFORMAT_C_FILES-$(CONFIG_LMLM4_DEMUXER) += lmlm4.c

 770: AVFORMAT_C_FILES-$(CONFIG_M4V_DEMUXER) += raw.c

 771: AVFORMAT_C_FILES-$(CONFIG_M4V_MUXER) += raw.c

 772: AVFORMAT_C_FILES-$(CONFIG_MATROSKA_DEMUXER) += matroskadec.c matroska.c \

 773: riff.c isom.c rmdec.c rm.c

 774: AVFORMAT_C_FILES-$(CONFIG_MATROSKA_MUXER) += matroskaenc.c matroska.c \

 775: riff.c isom.c avc.c \

 776: flacenc_header.c

 777: AVFORMAT_C_FILES-$(CONFIG_MJPEG_DEMUXER) += raw.c

 778: AVFORMAT_C_FILES-$(CONFIG_MJPEG_MUXER) += raw.c

 779: AVFORMAT_C_FILES-$(CONFIG_MLP_DEMUXER) += raw.c id3v2.c

 780: AVFORMAT_C_FILES-$(CONFIG_MLP_MUXER) += raw.c

 781: AVFORMAT_C_FILES-$(CONFIG_MM_DEMUXER) += mm.c

 782: AVFORMAT_C_FILES-$(CONFIG_MMF_DEMUXER) += mmf.c raw.c

 783: AVFORMAT_C_FILES-$(CONFIG_MMF_MUXER) += mmf.c riff.c

 784: AVFORMAT_C_FILES-$(CONFIG_MOV_DEMUXER) += mov.c riff.c isom.c

 785: AVFORMAT_C_FILES-$(CONFIG_MOV_MUXER) += movenc.c riff.c isom.c avc.c movenchint.c

 786: AVFORMAT_C_FILES-$(CONFIG_MP2_MUXER) += mp3.c id3v1.c

 787: AVFORMAT_C_FILES-$(CONFIG_MP3_DEMUXER) += mp3.c id3v1.c id3v2.c

 788: AVFORMAT_C_FILES-$(CONFIG_MP3_MUXER) += mp3.c id3v1.c id3v2.c

 789: AVFORMAT_C_FILES-$(CONFIG_MPC_DEMUXER) += mpc.c id3v1.c id3v2.c apetag.c

 790: AVFORMAT_C_FILES-$(CONFIG_MPC8_DEMUXER) += mpc8.c

 791: AVFORMAT_C_FILES-$(CONFIG_MPEG1SYSTEM_MUXER) += mpegenc.c

 792: AVFORMAT_C_FILES-$(CONFIG_MPEG1VCD_MUXER) += mpegenc.c

 793: AVFORMAT_C_FILES-$(CONFIG_MPEG2DVD_MUXER) += mpegenc.c

 794: AVFORMAT_C_FILES-$(CONFIG_MPEG2VOB_MUXER) += mpegenc.c

 795: AVFORMAT_C_FILES-$(CONFIG_MPEG2SVCD_MUXER) += mpegenc.c

 796: AVFORMAT_C_FILES-$(CONFIG_MPEG1VIDEO_MUXER) += raw.c

 797: AVFORMAT_C_FILES-$(CONFIG_MPEG2VIDEO_MUXER) += raw.c

 798: AVFORMAT_C_FILES-$(CONFIG_MPEGPS_DEMUXER) += mpeg.c

 799: AVFORMAT_C_FILES-$(CONFIG_MPEGTS_DEMUXER) += mpegts.c

 800: AVFORMAT_C_FILES-$(CONFIG_MPEGTS_MUXER) += mpegtsenc.c adtsenc.c

 801: AVFORMAT_C_FILES-$(CONFIG_MPEGVIDEO_DEMUXER) += raw.c

 802: AVFORMAT_C_FILES-$(CONFIG_MPJPEG_MUXER) += mpjpeg.c

 803: AVFORMAT_C_FILES-$(CONFIG_MSNWC_TCP_DEMUXER) += msnwc_tcp.c

 804: AVFORMAT_C_FILES-$(CONFIG_MTV_DEMUXER) += mtv.c

 805: AVFORMAT_C_FILES-$(CONFIG_MVI_DEMUXER) += mvi.c

 806: AVFORMAT_C_FILES-$(CONFIG_MXF_DEMUXER) += mxfdec.c mxf.c

 807: AVFORMAT_C_FILES-$(CONFIG_MXF_MUXER) += mxfenc.c mxf.c audiointerleave.c

 808: AVFORMAT_C_FILES-$(CONFIG_NC_DEMUXER) += ncdec.c

 809: AVFORMAT_C_FILES-$(CONFIG_NSV_DEMUXER) += nsvdec.c

 810: AVFORMAT_C_FILES-$(CONFIG_NULL_MUXER) += raw.c

 811: AVFORMAT_C_FILES-$(CONFIG_NUT_DEMUXER) += nutdec.c nut.c riff.c

 812: AVFORMAT_C_FILES-$(CONFIG_NUT_MUXER) += nutenc.c nut.c riff.c

 813: AVFORMAT_C_FILES-$(CONFIG_NUV_DEMUXER) += nuv.c riff.c

 814: AVFORMAT_C_FILES-$(CONFIG_OGG_DEMUXER) += oggdec.c \

 815: oggparsedirac.c \

 816: oggparseflac.c \

 817: oggparseogm.c \

 818: oggparseskeleton.c \

 819: oggparsespeex.c \

 820: oggparsetheora.c \

 821: oggparsevorbis.c \

 822: riff.c \

 823: vorbiscomment.c

 824: AVFORMAT_C_FILES-$(CONFIG_OGG_MUXER) += oggenc.c \

 825: vorbiscomment.c

 826: AVFORMAT_C_FILES-$(CONFIG_OMA_DEMUXER) += oma.c raw.c

 827: AVFORMAT_C_FILES-$(CONFIG_PCM_ALAW_DEMUXER) += raw.c

 828: AVFORMAT_C_FILES-$(CONFIG_PCM_ALAW_MUXER) += raw.c

 829: AVFORMAT_C_FILES-$(CONFIG_PCM_F32BE_DEMUXER) += raw.c

 830: AVFORMAT_C_FILES-$(CONFIG_PCM_F32BE_MUXER) += raw.c

 831: AVFORMAT_C_FILES-$(CONFIG_PCM_F32LE_DEMUXER) += raw.c

 832: AVFORMAT_C_FILES-$(CONFIG_PCM_F32LE_MUXER) += raw.c

 833: AVFORMAT_C_FILES-$(CONFIG_PCM_F64BE_DEMUXER) += raw.c

 834: AVFORMAT_C_FILES-$(CONFIG_PCM_F64BE_MUXER) += raw.c

 835: AVFORMAT_C_FILES-$(CONFIG_PCM_F64LE_DEMUXER) += raw.c

 836: AVFORMAT_C_FILES-$(CONFIG_PCM_F64LE_MUXER) += raw.c

 837: AVFORMAT_C_FILES-$(CONFIG_PCM_MULAW_DEMUXER) += raw.c

 838: AVFORMAT_C_FILES-$(CONFIG_PCM_MULAW_MUXER) += raw.c

 839: AVFORMAT_C_FILES-$(CONFIG_PCM_S16BE_DEMUXER) += raw.c

 840: AVFORMAT_C_FILES-$(CONFIG_PCM_S16BE_MUXER) += raw.c

 841: AVFORMAT_C_FILES-$(CONFIG_PCM_S16LE_DEMUXER) += raw.c

 842: AVFORMAT_C_FILES-$(CONFIG_PCM_S16LE_MUXER) += raw.c

 843: AVFORMAT_C_FILES-$(CONFIG_PCM_S24BE_DEMUXER) += raw.c

 844: AVFORMAT_C_FILES-$(CONFIG_PCM_S24BE_MUXER) += raw.c

 845: AVFORMAT_C_FILES-$(CONFIG_PCM_S24LE_DEMUXER) += raw.c

 846: AVFORMAT_C_FILES-$(CONFIG_PCM_S24LE_MUXER) += raw.c

 847: AVFORMAT_C_FILES-$(CONFIG_PCM_S32BE_DEMUXER) += raw.c

 848: AVFORMAT_C_FILES-$(CONFIG_PCM_S32BE_MUXER) += raw.c

 849: AVFORMAT_C_FILES-$(CONFIG_PCM_S32LE_DEMUXER) += raw.c

 850: AVFORMAT_C_FILES-$(CONFIG_PCM_S32LE_MUXER) += raw.c

 851: AVFORMAT_C_FILES-$(CONFIG_PCM_S8_DEMUXER) += raw.c

 852: AVFORMAT_C_FILES-$(CONFIG_PCM_S8_MUXER) += raw.c

 853: AVFORMAT_C_FILES-$(CONFIG_PCM_U16BE_DEMUXER) += raw.c

 854: AVFORMAT_C_FILES-$(CONFIG_PCM_U16BE_MUXER) += raw.c

 855: AVFORMAT_C_FILES-$(CONFIG_PCM_U16LE_DEMUXER) += raw.c

 856: AVFORMAT_C_FILES-$(CONFIG_PCM_U16LE_MUXER) += raw.c

 857: AVFORMAT_C_FILES-$(CONFIG_PCM_U24BE_DEMUXER) += raw.c

 858: AVFORMAT_C_FILES-$(CONFIG_PCM_U24BE_MUXER) += raw.c

 859: AVFORMAT_C_FILES-$(CONFIG_PCM_U24LE_DEMUXER) += raw.c

 860: AVFORMAT_C_FILES-$(CONFIG_PCM_U24LE_MUXER) += raw.c

 861: AVFORMAT_C_FILES-$(CONFIG_PCM_U32BE_DEMUXER) += raw.c

 862: AVFORMAT_C_FILES-$(CONFIG_PCM_U32BE_MUXER) += raw.c

 863: AVFORMAT_C_FILES-$(CONFIG_PCM_U32LE_DEMUXER) += raw.c

 864: AVFORMAT_C_FILES-$(CONFIG_PCM_U32LE_MUXER) += raw.c

 865: AVFORMAT_C_FILES-$(CONFIG_PCM_U8_DEMUXER) += raw.c

 866: AVFORMAT_C_FILES-$(CONFIG_PCM_U8_MUXER) += raw.c

 867: AVFORMAT_C_FILES-$(CONFIG_PVA_DEMUXER) += pva.c

 868: AVFORMAT_C_FILES-$(CONFIG_QCP_DEMUXER) += qcp.c

 869: AVFORMAT_C_FILES-$(CONFIG_R3D_DEMUXER) += r3d.c

 870: AVFORMAT_C_FILES-$(CONFIG_RAWVIDEO_DEMUXER) += raw.c

 871: AVFORMAT_C_FILES-$(CONFIG_RAWVIDEO_MUXER) += raw.c

 872: AVFORMAT_C_FILES-$(CONFIG_RL2_DEMUXER) += rl2.c

 873: AVFORMAT_C_FILES-$(CONFIG_RM_DEMUXER) += rmdec.c rm.c

 874: AVFORMAT_C_FILES-$(CONFIG_RM_MUXER) += rmenc.c rm.c

 875: AVFORMAT_C_FILES-$(CONFIG_ROQ_DEMUXER) += idroq.c

 876: AVFORMAT_C_FILES-$(CONFIG_ROQ_MUXER) += raw.c

 877: AVFORMAT_C_FILES-$(CONFIG_RPL_DEMUXER) += rpl.c

 878: AVFORMAT_C_FILES-$(CONFIG_RTP_MUXER) += rtp.c \

 879: rtpenc_aac.c \

 880: rtpenc_amr.c \

 881: rtpenc_h263.c \

 882: rtpenc_mpv.c \

 883: rtpenc.c \

 884: rtpenc_h264.c \

 885: avc.c

 886: AVFORMAT_C_FILES-$(CONFIG_RTSP_DEMUXER) += rtsp.c httpauth.c

 887: AVFORMAT_C_FILES-$(CONFIG_RTSP_MUXER) += rtsp.c rtspenc.c httpauth.c

 888: AVFORMAT_C_FILES-$(CONFIG_SDP_DEMUXER) += rtsp.c \

 889: rdt.c \

 890: rtp.c \

 891: rtpdec.c \

 892: rtpdec_amr.c \

 893: rtpdec_asf.c \

 894: rtpdec_h263.c \

 895: rtpdec_h264.c \

 896: rtpdec_xiph.c

 897: AVFORMAT_C_FILES-$(CONFIG_SEGAFILM_DEMUXER) += segafilm.c

 898: AVFORMAT_C_FILES-$(CONFIG_SHORTEN_DEMUXER) += raw.c id3v2.c

 899: AVFORMAT_C_FILES-$(CONFIG_SIFF_DEMUXER) += siff.c

 900: AVFORMAT_C_FILES-$(CONFIG_SMACKER_DEMUXER) += smacker.c

 901: AVFORMAT_C_FILES-$(CONFIG_SOL_DEMUXER) += sol.c raw.c

 902: AVFORMAT_C_FILES-$(CONFIG_SOX_DEMUXER) += soxdec.c raw.c

 903: AVFORMAT_C_FILES-$(CONFIG_SOX_MUXER) += soxenc.c

 904: AVFORMAT_C_FILES-$(CONFIG_SPDIF_MUXER) += spdif.c

 905: AVFORMAT_C_FILES-$(CONFIG_STR_DEMUXER) += psxstr.c

 906: AVFORMAT_C_FILES-$(CONFIG_SWF_DEMUXER) += swfdec.c

 907: AVFORMAT_C_FILES-$(CONFIG_SWF_MUXER) += swfenc.c

 908: AVFORMAT_C_FILES-$(CONFIG_THP_DEMUXER) += thp.c

 909: AVFORMAT_C_FILES-$(CONFIG_TIERTEXSEQ_DEMUXER) += tiertexseq.c

 910: AVFORMAT_C_FILES-$(CONFIG_TMV_DEMUXER) += tmv.c

 911: AVFORMAT_C_FILES-$(CONFIG_TRUEHD_DEMUXER) += raw.c id3v2.c

 912: AVFORMAT_C_FILES-$(CONFIG_TRUEHD_MUXER) += raw.c

 913: AVFORMAT_C_FILES-$(CONFIG_TTA_DEMUXER) += tta.c id3v1.c id3v2.c

 914: AVFORMAT_C_FILES-$(CONFIG_TXD_DEMUXER) += txd.c

 915: AVFORMAT_C_FILES-$(CONFIG_VC1_DEMUXER) += raw.c

 916: AVFORMAT_C_FILES-$(CONFIG_VC1T_DEMUXER) += vc1test.c

 917: AVFORMAT_C_FILES-$(CONFIG_VC1T_MUXER) += vc1testenc.c

 918: AVFORMAT_C_FILES-$(CONFIG_VMD_DEMUXER) += sierravmd.c

 919: AVFORMAT_C_FILES-$(CONFIG_VOC_DEMUXER) += vocdec.c voc.c

 920: AVFORMAT_C_FILES-$(CONFIG_VOC_MUXER) += vocenc.c voc.c

 921: AVFORMAT_C_FILES-$(CONFIG_VQF_DEMUXER) += vqf.c

 922: AVFORMAT_C_FILES-$(CONFIG_W64_DEMUXER) += wav.c riff.c raw.c

 923: AVFORMAT_C_FILES-$(CONFIG_WAV_DEMUXER) += wav.c riff.c raw.c

 924: AVFORMAT_C_FILES-$(CONFIG_WAV_MUXER) += wav.c riff.c

 925: AVFORMAT_C_FILES-$(CONFIG_WC3_DEMUXER) += wc3movie.c

 926: AVFORMAT_C_FILES-$(CONFIG_WEBM_MUXER) += matroskaenc.c matroska.c \

 927: riff.c isom.c avc.c \

 928: flacenc_header.c

 929: AVFORMAT_C_FILES-$(CONFIG_WSAUD_DEMUXER) += westwood.c

 930: AVFORMAT_C_FILES-$(CONFIG_WSVQA_DEMUXER) += westwood.c

 931: AVFORMAT_C_FILES-$(CONFIG_WV_DEMUXER) += wv.c apetag.c id3v1.c

 932: AVFORMAT_C_FILES-$(CONFIG_XA_DEMUXER) += xa.c

 933: AVFORMAT_C_FILES-$(CONFIG_YOP_DEMUXER) += yop.c

 934: AVFORMAT_C_FILES-$(CONFIG_YUV4MPEGPIPE_MUXER) += yuv4mpeg.c

 935: AVFORMAT_C_FILES-$(CONFIG_YUV4MPEGPIPE_DEMUXER) += yuv4mpeg.c

 936:  

 937: AVFORMAT_C_FILES-$(CONFIG_LIBNUT_DEMUXER) += libnut.c riff.c

 938: AVFORMAT_C_FILES-$(CONFIG_LIBNUT_MUXER) += libnut.c riff.c

 939:  

 940: AVFORMAT_C_FILES+= avio.c aviobuf.c

 941:  

 942: AVFORMAT_C_FILES-$(CONFIG_FILE_PROTOCOL) += file.c

 943: AVFORMAT_C_FILES-$(CONFIG_GOPHER_PROTOCOL) += gopher.c

 944: AVFORMAT_C_FILES-$(CONFIG_HTTP_PROTOCOL) += http.c httpauth.c

 945: AVFORMAT_C_FILES-$(CONFIG_PIPE_PROTOCOL) += file.c

 946:  

 947: RTMP-FILES-$(CONFIG_LIBRTMP) = librtmp.c

 948: RTMP-FILES-$(!CONFIG_LIBRTMP) = rtmpproto.c rtmppkt.c

 949: AVFORMAT_C_FILES-$(CONFIG_RTMP_PROTOCOL) += $(RTMP-FILES-yes)

 950:  

 951: AVFORMAT_C_FILES-$(CONFIG_RTP_PROTOCOL) += rtpproto.c

 952: AVFORMAT_C_FILES-$(CONFIG_TCP_PROTOCOL) += tcp.c

 953: AVFORMAT_C_FILES-$(CONFIG_UDP_PROTOCOL) += udp.c

 954: AVFORMAT_C_FILES-$(CONFIG_CONCAT_PROTOCOL) += concat.c

 955:  

 956: AVFORMAT_C_FILES-$(CONFIG_JACK_INDEV) += timefilter.c

 957:  

 958: AVFORMAT_C_FILES += $(AVFORMAT_C_FILES-yes)

 959:  

 960: AVFORMAT_SRC_FILES = $(addprefix libavformat/, $(sort $(AVFORMAT_C_FILES)))

 961:  

 962: SWSCALE_C_FILES = options.c rgb2rgb.c swscale.c utils.c yuv2rgb.c

 963:  

 964: LOCAL_SRC_FILES := \

 965: $(AVUTIL_SRC_FILES) \

 966: $(AVCODEC_SRC_FILES) \

 967: $(AVCODEC_ARM_SRC_FILES) \

 968: $(AVFORMAT_SRC_FILES)

 969:  

 970: LOCAL_ARM_MODE := arm

 971:  

 972: include $(BUILD_SHARED_LIBRARY)

 973:  
