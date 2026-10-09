package androidx.exifinterface.media;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.fe;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ExifInterface {
    public static final byte[] A;
    public static final byte[] B;
    public static final String[] C;
    public static final int[] D;
    public static final byte[] E;
    public static final ExifTag F;
    public static final ExifTag[][] G;
    public static final ExifTag[] H;
    public static final HashMap[] I;
    public static final HashMap[] J;
    public static final Set K;
    public static final HashMap L;
    public static final Charset M;
    public static final byte[] N;
    public static final byte[] O;
    public static final boolean m = Log.isLoggable("ExifInterface", 3);
    public static final int[] n;
    public static final int[] o;
    public static final byte[] p;
    public static final byte[] q;
    public static final byte[] r;
    public static final byte[] s;
    public static final byte[] t;
    public static final byte[] u;
    public static final byte[] v;
    public static final byte[] w;
    public static final byte[] x;
    public static final byte[] y;
    public static final byte[] z;
    public final FileDescriptor a;
    public final AssetManager.AssetInputStream b;
    public int c;
    public final HashMap[] d;
    public final HashSet e;
    public ByteOrder f;
    public boolean g;
    public int h;
    public int i;
    public int j;
    public int k;
    public ExifAttribute l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Rational {
        public final long a;
        public final long b;

        public Rational(long j, long j2) {
            if (j2 == 0) {
                this.a = 0L;
                this.b = 1L;
            } else {
                this.a = j;
                this.b = j2;
            }
        }

        public final String toString() {
            return this.a + "/" + this.b;
        }
    }

    static {
        Arrays.asList(1, 6, 3, 8);
        Arrays.asList(2, 7, 4, 5);
        n = new int[]{8, 8, 8};
        o = new int[]{8};
        p = new byte[]{-1, -40, -1};
        q = new byte[]{102, 116, 121, 112};
        r = new byte[]{109, 105, 102, 49};
        s = new byte[]{104, 101, 105, 99};
        t = new byte[]{97, 118, 105, 102};
        u = new byte[]{97, 118, 105, 115};
        v = new byte[]{79, 76, 89, 77, 80, 0};
        w = new byte[]{79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
        x = new byte[]{-119, 80, 78, 71, 13, 10, 26, 10};
        y = "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000".getBytes(StandardCharsets.UTF_8);
        z = new byte[]{82, 73, 70, 70};
        A = new byte[]{87, 69, 66, 80};
        B = new byte[]{69, 88, 73, 70};
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        C = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        D = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        E = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        ExifTag[] exifTagArr = {new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ImageWidth", 256, 3, 4), new ExifTag("ImageLength", 257, 3, 4), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", 270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", 273, 3, 4), new ExifTag("Orientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", 278, 3, 4), new ExifTag("StripByteCounts", 279, 3, 4), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", 301, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", 513, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("SensorTopBorder", 4, 4), new ExifTag("SensorLeftBorder", 5, 4), new ExifTag("SensorBottomBorder", 6, 4), new ExifTag("SensorRightBorder", 7, 4), new ExifTag("ISO", 23, 3), new ExifTag("JpgFromRaw", 46, 7), new ExifTag("Xmp", 700, 1)};
        ExifTag[] exifTagArr2 = {new ExifTag("ExposureTime", 33434, 5), new ExifTag("FNumber", 33437, 5), new ExifTag("ExposureProgram", 34850, 3), new ExifTag("SpectralSensitivity", 34852, 2), new ExifTag("PhotographicSensitivity", 34855, 3), new ExifTag("OECF", 34856, 7), new ExifTag("SensitivityType", 34864, 3), new ExifTag("StandardOutputSensitivity", 34865, 4), new ExifTag("RecommendedExposureIndex", 34866, 4), new ExifTag("ISOSpeed", 34867, 4), new ExifTag("ISOSpeedLatitudeyyy", 34868, 4), new ExifTag("ISOSpeedLatitudezzz", 34869, 4), new ExifTag("ExifVersion", 36864, 2), new ExifTag("DateTimeOriginal", 36867, 2), new ExifTag("DateTimeDigitized", 36868, 2), new ExifTag("OffsetTime", 36880, 2), new ExifTag("OffsetTimeOriginal", 36881, 2), new ExifTag("OffsetTimeDigitized", 36882, 2), new ExifTag("ComponentsConfiguration", 37121, 7), new ExifTag("CompressedBitsPerPixel", 37122, 5), new ExifTag("ShutterSpeedValue", 37377, 10), new ExifTag("ApertureValue", 37378, 5), new ExifTag("BrightnessValue", 37379, 10), new ExifTag("ExposureBiasValue", 37380, 10), new ExifTag("MaxApertureValue", 37381, 5), new ExifTag("SubjectDistance", 37382, 5), new ExifTag("MeteringMode", 37383, 3), new ExifTag("LightSource", 37384, 3), new ExifTag("Flash", 37385, 3), new ExifTag("FocalLength", 37386, 5), new ExifTag("SubjectArea", 37396, 3), new ExifTag("MakerNote", 37500, 7), new ExifTag("UserComment", 37510, 7), new ExifTag("SubSecTime", 37520, 2), new ExifTag("SubSecTimeOriginal", 37521, 2), new ExifTag("SubSecTimeDigitized", 37522, 2), new ExifTag("FlashpixVersion", 40960, 7), new ExifTag("ColorSpace", 40961, 3), new ExifTag("PixelXDimension", 40962, 3, 4), new ExifTag("PixelYDimension", 40963, 3, 4), new ExifTag("RelatedSoundFile", 40964, 2), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("FlashEnergy", 41483, 5), new ExifTag("SpatialFrequencyResponse", 41484, 7), new ExifTag("FocalPlaneXResolution", 41486, 5), new ExifTag("FocalPlaneYResolution", 41487, 5), new ExifTag("FocalPlaneResolutionUnit", 41488, 3), new ExifTag("SubjectLocation", 41492, 3), new ExifTag("ExposureIndex", 41493, 5), new ExifTag("SensingMethod", 41495, 3), new ExifTag("FileSource", 41728, 7), new ExifTag("SceneType", 41729, 7), new ExifTag("CFAPattern", 41730, 7), new ExifTag("CustomRendered", 41985, 3), new ExifTag("ExposureMode", 41986, 3), new ExifTag("WhiteBalance", 41987, 3), new ExifTag("DigitalZoomRatio", 41988, 5), new ExifTag("FocalLengthIn35mmFilm", 41989, 3), new ExifTag("SceneCaptureType", 41990, 3), new ExifTag("GainControl", 41991, 3), new ExifTag("Contrast", 41992, 3), new ExifTag("Saturation", 41993, 3), new ExifTag("Sharpness", 41994, 3), new ExifTag("DeviceSettingDescription", 41995, 7), new ExifTag("SubjectDistanceRange", 41996, 3), new ExifTag("ImageUniqueID", 42016, 2), new ExifTag("CameraOwnerName", 42032, 2), new ExifTag("BodySerialNumber", 42033, 2), new ExifTag("LensSpecification", 42034, 5), new ExifTag("LensMake", 42035, 2), new ExifTag("LensModel", 42036, 2), new ExifTag("Gamma", 42240, 5), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        ExifTag[] exifTagArr3 = {new ExifTag("GPSVersionID", 0, 1), new ExifTag("GPSLatitudeRef", 1, 2), new ExifTag("GPSLatitude", 2, 5, 10), new ExifTag("GPSLongitudeRef", 3, 2), new ExifTag("GPSLongitude", 4, 5, 10), new ExifTag("GPSAltitudeRef", 5, 1), new ExifTag("GPSAltitude", 6, 5), new ExifTag("GPSTimeStamp", 7, 5), new ExifTag("GPSSatellites", 8, 2), new ExifTag("GPSStatus", 9, 2), new ExifTag("GPSMeasureMode", 10, 2), new ExifTag("GPSDOP", 11, 5), new ExifTag("GPSSpeedRef", 12, 2), new ExifTag("GPSSpeed", 13, 5), new ExifTag("GPSTrackRef", 14, 2), new ExifTag("GPSTrack", 15, 5), new ExifTag("GPSImgDirectionRef", 16, 2), new ExifTag("GPSImgDirection", 17, 5), new ExifTag("GPSMapDatum", 18, 2), new ExifTag("GPSDestLatitudeRef", 19, 2), new ExifTag("GPSDestLatitude", 20, 5), new ExifTag("GPSDestLongitudeRef", 21, 2), new ExifTag("GPSDestLongitude", 22, 5), new ExifTag("GPSDestBearingRef", 23, 2), new ExifTag("GPSDestBearing", 24, 5), new ExifTag("GPSDestDistanceRef", 25, 2), new ExifTag("GPSDestDistance", 26, 5), new ExifTag("GPSProcessingMethod", 27, 7), new ExifTag("GPSAreaInformation", 28, 7), new ExifTag("GPSDateStamp", 29, 2), new ExifTag("GPSDifferential", 30, 3), new ExifTag("GPSHPositioningError", 31, 5)};
        ExifTag[] exifTagArr4 = {new ExifTag("InteroperabilityIndex", 1, 2)};
        ExifTag[] exifTagArr5 = {new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ThumbnailImageWidth", 256, 3, 4), new ExifTag("ThumbnailImageLength", 257, 3, 4), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", 270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", 273, 3, 4), new ExifTag("ThumbnailOrientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", 278, 3, 4), new ExifTag("StripByteCounts", 279, 3, 4), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", 301, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", 513, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        F = new ExifTag("StripOffsets", 273, 3);
        G = new ExifTag[][]{exifTagArr, exifTagArr2, exifTagArr3, exifTagArr4, exifTagArr5, exifTagArr, new ExifTag[]{new ExifTag("ThumbnailImage", 256, 7), new ExifTag("CameraSettingsIFDPointer", 8224, 4), new ExifTag("ImageProcessingIFDPointer", 8256, 4)}, new ExifTag[]{new ExifTag("PreviewImageStart", 257, 4), new ExifTag("PreviewImageLength", 258, 4)}, new ExifTag[]{new ExifTag("AspectFrame", 4371, 3)}, new ExifTag[]{new ExifTag("ColorSpace", 55, 3)}};
        H = new ExifTag[]{new ExifTag("SubIFDPointer", 330, 4), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("CameraSettingsIFDPointer", 8224, 1), new ExifTag("ImageProcessingIFDPointer", 8256, 1)};
        I = new HashMap[10];
        J = new HashMap[10];
        K = Collections.unmodifiableSet(new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance")));
        L = new HashMap();
        Charset forName = Charset.forName("US-ASCII");
        M = forName;
        N = "Exif\u0000\u0000".getBytes(forName);
        O = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(forName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            ExifTag[][] exifTagArr6 = G;
            if (i < exifTagArr6.length) {
                I[i] = new HashMap();
                J[i] = new HashMap();
                for (ExifTag exifTag : exifTagArr6[i]) {
                    I[i].put(Integer.valueOf(exifTag.a), exifTag);
                    J[i].put(exifTag.b, exifTag);
                }
                i++;
            } else {
                HashMap hashMap = L;
                ExifTag[] exifTagArr7 = H;
                hashMap.put(Integer.valueOf(exifTagArr7[0].a), 5);
                hashMap.put(Integer.valueOf(exifTagArr7[1].a), 1);
                hashMap.put(Integer.valueOf(exifTagArr7[2].a), 2);
                hashMap.put(Integer.valueOf(exifTagArr7[3].a), 3);
                hashMap.put(Integer.valueOf(exifTagArr7[4].a), 7);
                hashMap.put(Integer.valueOf(exifTagArr7[5].a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00f2 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00dd A[Catch: all -> 0x005e, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x005e, blocks: (B:6:0x004f, B:8:0x0052, B:10:0x0067, B:16:0x0084, B:23:0x0097, B:24:0x00aa, B:33:0x009f, B:34:0x00a3, B:35:0x00a7, B:36:0x00b4, B:38:0x00bd, B:40:0x00c3, B:42:0x00c9, B:44:0x00cf, B:54:0x00dd), top: B:5:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ExifInterface(InputStream inputStream) {
        ExifTag[][] exifTagArr = G;
        this.d = new HashMap[exifTagArr.length];
        this.e = new HashSet(exifTagArr.length);
        this.f = ByteOrder.BIG_ENDIAN;
        boolean z2 = inputStream instanceof AssetManager.AssetInputStream;
        boolean z3 = m;
        if (z2) {
            this.b = (AssetManager.AssetInputStream) inputStream;
            this.a = null;
        } else {
            if (inputStream instanceof FileInputStream) {
                FileInputStream fileInputStream = (FileInputStream) inputStream;
                try {
                    Os.lseek(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                    this.b = null;
                    this.a = fileInputStream.getFD();
                } catch (Exception unused) {
                    if (z3) {
                        Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                    }
                }
            }
            this.b = null;
            this.a = null;
        }
        for (int i = 0; i < exifTagArr.length; i++) {
            try {
                try {
                    this.d[i] = new HashMap();
                } catch (Throwable th) {
                    a();
                    if (z3) {
                        q();
                    }
                    throw th;
                }
            } catch (IOException e) {
                e = e;
                if (z3) {
                    Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                }
                a();
                if (!z3) {
                    return;
                }
                q();
            } catch (UnsupportedOperationException e2) {
                e = e2;
                if (z3) {
                }
                a();
                if (!z3) {
                }
                q();
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
        int g = g(bufferedInputStream);
        this.c = g;
        if (g != 4 && g != 9 && g != 13 && g != 14) {
            SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream = new SeekableByteOrderedDataInputStream(bufferedInputStream);
            int i2 = this.c;
            if (i2 != 12 && i2 != 15) {
                if (i2 == 7) {
                    h(seekableByteOrderedDataInputStream);
                } else if (i2 == 10) {
                    l(seekableByteOrderedDataInputStream);
                } else {
                    k(seekableByteOrderedDataInputStream);
                }
                seekableByteOrderedDataInputStream.h(this.h);
                v(seekableByteOrderedDataInputStream);
                a();
                if (!z3) {
                    return;
                }
                q();
            }
            e(seekableByteOrderedDataInputStream, i2);
            seekableByteOrderedDataInputStream.h(this.h);
            v(seekableByteOrderedDataInputStream);
            a();
            if (!z3) {
            }
            q();
        }
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bufferedInputStream);
        int i3 = this.c;
        if (i3 == 4) {
            f(byteOrderedDataInputStream, 0, 0);
        } else if (i3 == 13) {
            i(byteOrderedDataInputStream);
        } else if (i3 == 9) {
            j(byteOrderedDataInputStream);
        } else if (i3 == 14) {
            m(byteOrderedDataInputStream);
        }
        a();
        if (!z3) {
        }
        q();
    }

    public static ByteOrder r(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        short readShort = byteOrderedDataInputStream.readShort();
        boolean z2 = m;
        if (readShort != 18761) {
            if (readShort == 19789) {
                if (z2) {
                    Log.d("ExifInterface", "readExifSegment: Byte Align MM");
                }
                return ByteOrder.BIG_ENDIAN;
            }
            fe.x(Integer.toHexString(readShort), "Invalid byte order: ");
            return null;
        }
        if (z2) {
            Log.d("ExifInterface", "readExifSegment: Byte Align II");
        }
        return ByteOrder.LITTLE_ENDIAN;
    }

    public final void a() {
        String b = b("DateTimeOriginal");
        HashMap[] hashMapArr = this.d;
        if (b != null && b("DateTime") == null) {
            HashMap hashMap = hashMapArr[0];
            byte[] bytes = b.concat("\u0000").getBytes(M);
            hashMap.put("DateTime", new ExifAttribute(bytes, 2, bytes.length));
        }
        if (b("ImageWidth") == null) {
            hashMapArr[0].put("ImageWidth", ExifAttribute.a(0L, this.f));
        }
        if (b("ImageLength") == null) {
            hashMapArr[0].put("ImageLength", ExifAttribute.a(0L, this.f));
        }
        if (b("Orientation") == null) {
            hashMapArr[0].put("Orientation", ExifAttribute.a(0L, this.f));
        }
        if (b("LightSource") == null) {
            hashMapArr[1].put("LightSource", ExifAttribute.a(0L, this.f));
        }
    }

    public final String b(String str) {
        ExifAttribute d = d(str);
        if (d != null) {
            int i = d.a;
            if (str.equals("GPSTimeStamp")) {
                if (i != 5 && i != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + i);
                    return null;
                }
                Rational[] rationalArr = (Rational[]) d.g(this.f);
                if (rationalArr != null && rationalArr.length == 3) {
                    Rational rational = rationalArr[0];
                    Integer valueOf = Integer.valueOf((int) (((float) rational.a) / ((float) rational.b)));
                    Rational rational2 = rationalArr[1];
                    Integer valueOf2 = Integer.valueOf((int) (((float) rational2.a) / ((float) rational2.b)));
                    Rational rational3 = rationalArr[2];
                    return String.format("%02d:%02d:%02d", valueOf, valueOf2, Integer.valueOf((int) (((float) rational3.a) / ((float) rational3.b))));
                }
                Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(rationalArr));
                return null;
            }
            boolean contains = K.contains(str);
            ByteOrder byteOrder = this.f;
            if (contains) {
                try {
                    return Double.toString(d.d(byteOrder));
                } catch (NumberFormatException unused) {
                }
            } else {
                return d.f(byteOrder);
            }
        }
        return null;
    }

    public final int c() {
        ExifAttribute d = d("Orientation");
        if (d != null) {
            try {
                return d.e(this.f);
            } catch (NumberFormatException unused) {
                return 1;
            }
        }
        return 1;
    }

    public final ExifAttribute d(String str) {
        ExifAttribute exifAttribute;
        int i;
        ExifAttribute exifAttribute2;
        if ("ISOSpeedRatings".equals(str)) {
            if (m) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        if ("Xmp".equals(str) && (i = this.c) != 4 && ((i == 9 || i == 15 || i == 12 || i == 13) && (exifAttribute2 = this.l) != null)) {
            return exifAttribute2;
        }
        for (int i2 = 0; i2 < G.length; i2++) {
            ExifAttribute exifAttribute3 = (ExifAttribute) this.d[i2].get(str);
            if (exifAttribute3 != null) {
                return exifAttribute3;
            }
        }
        if ("Xmp".equals(str) && (exifAttribute = this.l) != null) {
            return exifAttribute;
        }
        return null;
    }

    public final void e(final SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i) {
        String str;
        String str2;
        String str3;
        int i2;
        if (i == 15 && Build.VERSION.SDK_INT < 31) {
            fe.t("Reading EXIF from AVIF files is supported from SDK 31 and above");
            return;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(new MediaDataSource() { // from class: androidx.exifinterface.media.ExifInterface.1
                    public long j;

                    @Override // android.media.MediaDataSource
                    public final long getSize() {
                        return -1L;
                    }

                    @Override // android.media.MediaDataSource
                    public final int readAt(long j, byte[] bArr, int i3, int i4) {
                        SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = SeekableByteOrderedDataInputStream.this;
                        DataInputStream dataInputStream = seekableByteOrderedDataInputStream2.j;
                        if (i4 == 0) {
                            return 0;
                        }
                        if (j >= 0) {
                            try {
                                long j2 = this.j;
                                if (j2 != j) {
                                    if (j2 < 0 || j < j2 + dataInputStream.available()) {
                                        seekableByteOrderedDataInputStream2.h(j);
                                        this.j = j;
                                    }
                                }
                                if (i4 > dataInputStream.available()) {
                                    i4 = dataInputStream.available();
                                }
                                int read = seekableByteOrderedDataInputStream2.read(bArr, i3, i4);
                                if (read >= 0) {
                                    this.j += read;
                                    return read;
                                }
                            } catch (IOException unused) {
                            }
                            this.j = -1L;
                            return -1;
                        }
                        return -1;
                    }

                    @Override // java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                });
                String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
                String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
                String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
                String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(extractMetadata3)) {
                    str = mediaMetadataRetriever.extractMetadata(29);
                    str3 = mediaMetadataRetriever.extractMetadata(30);
                    str2 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(extractMetadata4)) {
                    str = mediaMetadataRetriever.extractMetadata(18);
                    str3 = mediaMetadataRetriever.extractMetadata(19);
                    str2 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                }
                HashMap[] hashMapArr = this.d;
                if (str != null) {
                    hashMapArr[0].put("ImageWidth", ExifAttribute.c(Integer.parseInt(str), this.f));
                }
                if (str3 != null) {
                    hashMapArr[0].put("ImageLength", ExifAttribute.c(Integer.parseInt(str3), this.f));
                }
                if (str2 != null) {
                    int parseInt = Integer.parseInt(str2);
                    if (parseInt != 90) {
                        if (parseInt != 180) {
                            if (parseInt != 270) {
                                i2 = 1;
                            } else {
                                i2 = 8;
                            }
                        } else {
                            i2 = 3;
                        }
                    } else {
                        i2 = 6;
                    }
                    hashMapArr[0].put("Orientation", ExifAttribute.c(i2, this.f));
                }
                if (extractMetadata != null && extractMetadata2 != null) {
                    int parseInt2 = Integer.parseInt(extractMetadata);
                    int parseInt3 = Integer.parseInt(extractMetadata2);
                    if (parseInt3 > 6) {
                        seekableByteOrderedDataInputStream.h(parseInt2);
                        byte[] bArr = new byte[6];
                        seekableByteOrderedDataInputStream.readFully(bArr);
                        int i3 = parseInt2 + 6;
                        int i4 = parseInt3 - 6;
                        if (Arrays.equals(bArr, N)) {
                            byte[] bArr2 = new byte[i4];
                            seekableByteOrderedDataInputStream.readFully(bArr2);
                            this.h = i3;
                            s(0, bArr2);
                        } else {
                            throw new IOException("Invalid identifier");
                        }
                    } else {
                        throw new IOException("Invalid exif length");
                    }
                }
                String extractMetadata5 = mediaMetadataRetriever.extractMetadata(41);
                String extractMetadata6 = mediaMetadataRetriever.extractMetadata(42);
                if (extractMetadata5 != null && extractMetadata6 != null) {
                    int parseInt4 = Integer.parseInt(extractMetadata5);
                    int parseInt5 = Integer.parseInt(extractMetadata6);
                    long j = parseInt4;
                    seekableByteOrderedDataInputStream.h(j);
                    byte[] bArr3 = new byte[parseInt5];
                    seekableByteOrderedDataInputStream.readFully(bArr3);
                    this.l = new ExifAttribute(j, bArr3, 1, parseInt5);
                }
                if (m) {
                    Log.d("ExifInterface", "Heif meta: " + str + "x" + str3 + ", rotation " + str2);
                }
                try {
                    mediaMetadataRetriever.release();
                } catch (IOException unused) {
                }
            } catch (RuntimeException e) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.", e);
            }
        } finally {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x016e, code lost:
    
        r23.l = r22.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0172, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x00a2. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x00a5. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x00a8. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:35:0x015f A[LOOP:0: B:9:0x0034->B:35:0x015f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0166 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b0 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(ByteOrderedDataInputStream byteOrderedDataInputStream, int i, int i2) {
        String str;
        String str2;
        boolean z2 = m;
        if (z2) {
            Log.d("ExifInterface", "getJpegAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.l = ByteOrder.BIG_ENDIAN;
        byte readByte = byteOrderedDataInputStream.readByte();
        byte b = -1;
        if (readByte == -1) {
            if (byteOrderedDataInputStream.readByte() == -40) {
                int i3 = 2;
                while (true) {
                    byte readByte2 = byteOrderedDataInputStream.readByte();
                    if (readByte2 != b) {
                        fe.x(Integer.toHexString(readByte2 & 255), "Invalid marker:");
                        return;
                    }
                    while (true) {
                        int i4 = i3 + 1;
                        byte readByte3 = byteOrderedDataInputStream.readByte();
                        if (readByte3 != b) {
                            if (z2) {
                                Log.d("ExifInterface", "Found JPEG segment indicator: " + Integer.toHexString(readByte3 & 255));
                            }
                            if (readByte3 != -39 && readByte3 != -38) {
                                int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
                                int i5 = readUnsignedShort - 2;
                                int i6 = i3 + 4;
                                if (z2) {
                                    Log.d("ExifInterface", "JPEG segment: " + Integer.toHexString(readByte3 & 255) + " (length: " + readUnsignedShort + ")");
                                }
                                if (i5 >= 0) {
                                    if (readByte3 != -31) {
                                        HashMap[] hashMapArr = this.d;
                                        if (readByte3 != -2) {
                                            switch (readByte3) {
                                                default:
                                                    switch (readByte3) {
                                                        default:
                                                            switch (readByte3) {
                                                                default:
                                                                    switch (readByte3) {
                                                                    }
                                                                case -55:
                                                                case -54:
                                                                case -53:
                                                                    byteOrderedDataInputStream.a(1);
                                                                    HashMap hashMap = hashMapArr[i2];
                                                                    if (i2 != 4) {
                                                                        str = "ImageLength";
                                                                    } else {
                                                                        str = "ThumbnailImageLength";
                                                                    }
                                                                    hashMap.put(str, ExifAttribute.a(byteOrderedDataInputStream.readUnsignedShort(), this.f));
                                                                    HashMap hashMap2 = hashMapArr[i2];
                                                                    if (i2 != 4) {
                                                                        str2 = "ImageWidth";
                                                                    } else {
                                                                        str2 = "ThumbnailImageWidth";
                                                                    }
                                                                    hashMap2.put(str2, ExifAttribute.a(byteOrderedDataInputStream.readUnsignedShort(), this.f));
                                                                    i5 = readUnsignedShort - 7;
                                                                    break;
                                                            }
                                                        case -59:
                                                        case -58:
                                                        case -57:
                                                            break;
                                                    }
                                                case -64:
                                                case -63:
                                                case -62:
                                                case -61:
                                                    break;
                                            }
                                            if (i5 < 0) {
                                                byteOrderedDataInputStream.a(i5);
                                                i3 = i6 + i5;
                                                b = -1;
                                            } else {
                                                k8.j("Invalid length");
                                                return;
                                            }
                                        } else {
                                            byte[] bArr = new byte[i5];
                                            byteOrderedDataInputStream.readFully(bArr);
                                            if (b("UserComment") == null) {
                                                HashMap hashMap3 = hashMapArr[1];
                                                Charset charset = M;
                                                byte[] bytes = new String(bArr, charset).concat("\u0000").getBytes(charset);
                                                hashMap3.put("UserComment", new ExifAttribute(bytes, 2, bytes.length));
                                            }
                                        }
                                    } else {
                                        byte[] bArr2 = new byte[i5];
                                        byteOrderedDataInputStream.readFully(bArr2);
                                        int i7 = i6 + i5;
                                        byte[] bArr3 = N;
                                        if (ExifInterfaceUtils.b(bArr2, bArr3)) {
                                            byte[] copyOfRange = Arrays.copyOfRange(bArr2, bArr3.length, i5);
                                            this.h = i + i6 + bArr3.length;
                                            s(i2, copyOfRange);
                                            v(new ByteOrderedDataInputStream(copyOfRange));
                                        } else {
                                            byte[] bArr4 = O;
                                            if (ExifInterfaceUtils.b(bArr2, bArr4)) {
                                                int length = i6 + bArr4.length;
                                                byte[] copyOfRange2 = Arrays.copyOfRange(bArr2, bArr4.length, i5);
                                                this.l = new ExifAttribute(length, copyOfRange2, 1, copyOfRange2.length);
                                            }
                                        }
                                        i6 = i7;
                                    }
                                    i5 = 0;
                                    if (i5 < 0) {
                                    }
                                } else {
                                    k8.j("Invalid length");
                                    return;
                                }
                            }
                        } else {
                            i3 = i4;
                        }
                    }
                }
            } else {
                fe.x(Integer.toHexString(readByte & 255), "Invalid marker: ");
            }
        } else {
            fe.x(Integer.toHexString(readByte & 255), "Invalid marker: ");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x00f4, code lost:
    
        if (r7 != null) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:171:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0132 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0134 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0166 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int g(BufferedInputStream bufferedInputStream) {
        int i;
        ByteOrderedDataInputStream byteOrderedDataInputStream;
        int i2;
        ByteOrderedDataInputStream byteOrderedDataInputStream2;
        int i3;
        int i4;
        int i5;
        long readInt;
        byte[] bArr;
        long j;
        bufferedInputStream.mark(5000);
        byte[] bArr2 = new byte[5000];
        bufferedInputStream.read(bArr2);
        bufferedInputStream.reset();
        int i6 = 0;
        while (true) {
            byte[] bArr3 = p;
            if (i6 >= bArr3.length) {
                return 4;
            }
            if (bArr2[i6] != bArr3[i6]) {
                byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
                for (int i7 = 0; i7 < bytes.length; i7++) {
                    if (bArr2[i7] != bytes[i7]) {
                        ByteOrderedDataInputStream byteOrderedDataInputStream3 = null;
                        int i8 = 1;
                        try {
                            byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr2);
                            try {
                                try {
                                    readInt = byteOrderedDataInputStream.readInt();
                                    bArr = new byte[4];
                                    byteOrderedDataInputStream.readFully(bArr);
                                } catch (Exception e) {
                                    e = e;
                                    i = 0;
                                }
                            } catch (Throwable th) {
                                th = th;
                                byteOrderedDataInputStream3 = byteOrderedDataInputStream;
                                if (byteOrderedDataInputStream3 != null) {
                                    byteOrderedDataInputStream3.close();
                                }
                                throw th;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            i = 0;
                            byteOrderedDataInputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                            if (byteOrderedDataInputStream3 != null) {
                            }
                            throw th;
                        }
                        if (Arrays.equals(bArr, q)) {
                            if (readInt == 1) {
                                readInt = byteOrderedDataInputStream.readLong();
                                j = 16;
                                if (readInt < 16) {
                                }
                            } else {
                                j = 8;
                            }
                            if (readInt > 5000) {
                                readInt = 5000;
                            }
                            long j2 = readInt - j;
                            if (j2 >= 8) {
                                byte[] bArr4 = new byte[4];
                                boolean z2 = false;
                                boolean z3 = false;
                                boolean z4 = false;
                                for (long j3 = 0; j3 < j2 / 4; j3++) {
                                    try {
                                        byteOrderedDataInputStream.readFully(bArr4);
                                        if (j3 != 1) {
                                            i = 0;
                                            try {
                                                if (Arrays.equals(bArr4, r)) {
                                                    z2 = true;
                                                } else if (Arrays.equals(bArr4, s)) {
                                                    z3 = true;
                                                } else if (Arrays.equals(bArr4, t) || Arrays.equals(bArr4, u)) {
                                                    z4 = true;
                                                }
                                                if (z2) {
                                                    if (z3) {
                                                        byteOrderedDataInputStream.close();
                                                        i2 = 12;
                                                        break;
                                                    }
                                                    if (z4) {
                                                        byteOrderedDataInputStream.close();
                                                        i2 = 15;
                                                        break;
                                                    }
                                                } else {
                                                    continue;
                                                }
                                            } catch (Exception e3) {
                                                e = e3;
                                                if (m) {
                                                    Log.d("ExifInterface", "Exception parsing HEIF file type box.", e);
                                                }
                                            }
                                        }
                                    } catch (EOFException unused) {
                                        i = 0;
                                    }
                                }
                                i = 0;
                                byteOrderedDataInputStream.close();
                                i2 = i;
                                if (i2 == 0) {
                                    return i2;
                                }
                                try {
                                    byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(bArr2);
                                    try {
                                        ByteOrder r2 = r(byteOrderedDataInputStream2);
                                        this.f = r2;
                                        byteOrderedDataInputStream2.l = r2;
                                        short readShort = byteOrderedDataInputStream2.readShort();
                                        if (readShort != 20306 && readShort != 21330) {
                                            i3 = i;
                                        } else {
                                            i3 = 1;
                                        }
                                        byteOrderedDataInputStream2.close();
                                    } catch (Exception unused2) {
                                        if (byteOrderedDataInputStream2 != null) {
                                            byteOrderedDataInputStream2.close();
                                        }
                                        i3 = i;
                                        if (i3 == 0) {
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        byteOrderedDataInputStream3 = byteOrderedDataInputStream2;
                                        if (byteOrderedDataInputStream3 != null) {
                                            byteOrderedDataInputStream3.close();
                                        }
                                        throw th;
                                    }
                                } catch (Exception unused3) {
                                    byteOrderedDataInputStream2 = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                                if (i3 == 0) {
                                    return 7;
                                }
                                try {
                                    ByteOrderedDataInputStream byteOrderedDataInputStream4 = new ByteOrderedDataInputStream(bArr2);
                                    try {
                                        ByteOrder r3 = r(byteOrderedDataInputStream4);
                                        this.f = r3;
                                        byteOrderedDataInputStream4.l = r3;
                                        if (byteOrderedDataInputStream4.readShort() == 85) {
                                            i4 = 1;
                                        } else {
                                            i4 = i;
                                        }
                                        byteOrderedDataInputStream4.close();
                                    } catch (Exception unused4) {
                                        byteOrderedDataInputStream3 = byteOrderedDataInputStream4;
                                        if (byteOrderedDataInputStream3 != null) {
                                            byteOrderedDataInputStream3.close();
                                        }
                                        i4 = i;
                                        if (i4 == 0) {
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        byteOrderedDataInputStream3 = byteOrderedDataInputStream4;
                                        if (byteOrderedDataInputStream3 != null) {
                                            byteOrderedDataInputStream3.close();
                                        }
                                        throw th;
                                    }
                                } catch (Exception unused5) {
                                } catch (Throwable th6) {
                                    th = th6;
                                }
                                if (i4 == 0) {
                                    return 10;
                                }
                                int i9 = i;
                                while (true) {
                                    byte[] bArr5 = x;
                                    if (i9 < bArr5.length) {
                                        if (bArr2[i9] != bArr5[i9]) {
                                            i5 = i;
                                            break;
                                        }
                                        i9++;
                                    } else {
                                        i5 = 1;
                                        break;
                                    }
                                }
                                if (i5 != 0) {
                                    return 13;
                                }
                                int i10 = i;
                                while (true) {
                                    byte[] bArr6 = z;
                                    if (i10 < bArr6.length) {
                                        if (bArr2[i10] != bArr6[i10]) {
                                            break;
                                        }
                                        i10++;
                                    } else {
                                        int i11 = i;
                                        while (true) {
                                            byte[] bArr7 = A;
                                            if (i11 >= bArr7.length) {
                                                break;
                                            }
                                            if (bArr2[bArr6.length + i11 + 4] != bArr7[i11]) {
                                                break;
                                            }
                                            i11++;
                                        }
                                    }
                                }
                                i8 = i;
                                if (i8 != 0) {
                                    return 14;
                                }
                                return i;
                            }
                        }
                        byteOrderedDataInputStream.close();
                        i = 0;
                        i2 = 0;
                        if (i2 == 0) {
                        }
                    }
                }
                return 9;
            }
            i6++;
        }
    }

    public final void h(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        int i;
        int i2;
        k(seekableByteOrderedDataInputStream);
        HashMap[] hashMapArr = this.d;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[1].get("MakerNote");
        if (exifAttribute != null) {
            SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = new SeekableByteOrderedDataInputStream(exifAttribute.d);
            seekableByteOrderedDataInputStream2.l = this.f;
            byte[] bArr = v;
            byte[] bArr2 = new byte[bArr.length];
            seekableByteOrderedDataInputStream2.readFully(bArr2);
            seekableByteOrderedDataInputStream2.h(0L);
            byte[] bArr3 = w;
            byte[] bArr4 = new byte[bArr3.length];
            seekableByteOrderedDataInputStream2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                seekableByteOrderedDataInputStream2.h(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                seekableByteOrderedDataInputStream2.h(12L);
            }
            t(seekableByteOrderedDataInputStream2, 6);
            ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[7].get("PreviewImageStart");
            ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[7].get("PreviewImageLength");
            if (exifAttribute2 != null && exifAttribute3 != null) {
                hashMapArr[5].put("JPEGInterchangeFormat", exifAttribute2);
                hashMapArr[5].put("JPEGInterchangeFormatLength", exifAttribute3);
            }
            ExifAttribute exifAttribute4 = (ExifAttribute) hashMapArr[8].get("AspectFrame");
            if (exifAttribute4 != null) {
                int[] iArr = (int[]) exifAttribute4.g(this.f);
                if (iArr != null && iArr.length == 4) {
                    int i3 = iArr[2];
                    int i4 = iArr[0];
                    if (i3 > i4 && (i = iArr[3]) > (i2 = iArr[1])) {
                        int i5 = (i3 - i4) + 1;
                        int i6 = (i - i2) + 1;
                        if (i5 < i6) {
                            int i7 = i5 + i6;
                            i6 = i7 - i6;
                            i5 = i7 - i6;
                        }
                        ExifAttribute c = ExifAttribute.c(i5, this.f);
                        ExifAttribute c2 = ExifAttribute.c(i6, this.f);
                        hashMapArr[0].put("ImageWidth", c);
                        hashMapArr[0].put("ImageLength", c2);
                        return;
                    }
                    return;
                }
                Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
            }
        }
    }

    public final void i(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        if (m) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.l = ByteOrder.BIG_ENDIAN;
        int i = byteOrderedDataInputStream.k;
        byteOrderedDataInputStream.a(x.length);
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            if (!z2 || !z3) {
                try {
                    int readInt = byteOrderedDataInputStream.readInt();
                    int readInt2 = byteOrderedDataInputStream.readInt();
                    int i2 = byteOrderedDataInputStream.k;
                    int i3 = i2 + readInt + 4;
                    int i4 = i2 - i;
                    if (i4 == 16 && readInt2 != 1229472850) {
                        throw new IOException("Encountered invalid PNG file--IHDR chunk should appear as the first chunk");
                    }
                    if (readInt2 == 1229278788) {
                        return;
                    }
                    if (readInt2 == 1700284774 && !z2) {
                        this.h = i4;
                        byte[] bArr = new byte[readInt];
                        byteOrderedDataInputStream.readFully(bArr);
                        int readInt3 = byteOrderedDataInputStream.readInt();
                        CRC32 crc32 = new CRC32();
                        crc32.update(readInt2 >>> 24);
                        crc32.update(readInt2 >>> 16);
                        crc32.update(readInt2 >>> 8);
                        crc32.update(readInt2);
                        crc32.update(bArr);
                        if (((int) crc32.getValue()) == readInt3) {
                            s(0, bArr);
                            y();
                            v(new ByteOrderedDataInputStream(bArr));
                            z2 = true;
                        } else {
                            throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt3 + ", calculated CRC value: " + crc32.getValue());
                        }
                    } else if (readInt2 == 1767135348 && !z3) {
                        byte[] bArr2 = y;
                        if (readInt >= bArr2.length) {
                            int length = bArr2.length;
                            byte[] bArr3 = new byte[length];
                            byteOrderedDataInputStream.readFully(bArr3);
                            if (Arrays.equals(bArr3, bArr2)) {
                                int i5 = byteOrderedDataInputStream.k - i;
                                int i6 = readInt - length;
                                byte[] bArr4 = new byte[i6];
                                byteOrderedDataInputStream.readFully(bArr4);
                                this.l = new ExifAttribute(i5, bArr4, 1, i6);
                                z3 = true;
                            }
                        }
                    }
                    byteOrderedDataInputStream.a(i3 - byteOrderedDataInputStream.k);
                } catch (EOFException e) {
                    throw new IOException("Encountered corrupt PNG file.", e);
                }
            } else {
                return;
            }
        }
    }

    public final void j(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        boolean z2 = m;
        if (z2) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.a(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        byteOrderedDataInputStream.readFully(bArr);
        byteOrderedDataInputStream.readFully(bArr2);
        byteOrderedDataInputStream.readFully(bArr3);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        int i3 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i2];
        byteOrderedDataInputStream.a(i - byteOrderedDataInputStream.k);
        byteOrderedDataInputStream.readFully(bArr4);
        f(new ByteOrderedDataInputStream(bArr4), i, 5);
        byteOrderedDataInputStream.a(i3 - byteOrderedDataInputStream.k);
        byteOrderedDataInputStream.l = ByteOrder.BIG_ENDIAN;
        int readInt = byteOrderedDataInputStream.readInt();
        if (z2) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + readInt);
        }
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
            int readUnsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            if (readUnsignedShort == F.a) {
                short readShort = byteOrderedDataInputStream.readShort();
                short readShort2 = byteOrderedDataInputStream.readShort();
                ExifAttribute c = ExifAttribute.c(readShort, this.f);
                ExifAttribute c2 = ExifAttribute.c(readShort2, this.f);
                HashMap[] hashMapArr = this.d;
                hashMapArr[0].put("ImageLength", c);
                hashMapArr[0].put("ImageWidth", c2);
                if (z2) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) readShort) + ", width: " + ((int) readShort2));
                    return;
                }
                return;
            }
            byteOrderedDataInputStream.a(readUnsignedShort2);
        }
    }

    public final void k(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        p(seekableByteOrderedDataInputStream);
        t(seekableByteOrderedDataInputStream, 0);
        x(seekableByteOrderedDataInputStream, 0);
        x(seekableByteOrderedDataInputStream, 5);
        x(seekableByteOrderedDataInputStream, 4);
        y();
        if (this.c == 8) {
            HashMap[] hashMapArr = this.d;
            ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[1].get("MakerNote");
            if (exifAttribute != null) {
                SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = new SeekableByteOrderedDataInputStream(exifAttribute.d);
                seekableByteOrderedDataInputStream2.l = this.f;
                seekableByteOrderedDataInputStream2.a(6);
                t(seekableByteOrderedDataInputStream2, 9);
                ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[9].get("ColorSpace");
                if (exifAttribute2 != null) {
                    hashMapArr[1].put("ColorSpace", exifAttribute2);
                }
            }
        }
    }

    public final void l(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        if (m) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + seekableByteOrderedDataInputStream);
        }
        k(seekableByteOrderedDataInputStream);
        HashMap[] hashMapArr = this.d;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[0].get("JpgFromRaw");
        if (exifAttribute != null) {
            f(new ByteOrderedDataInputStream(exifAttribute.d), (int) exifAttribute.c, 5);
        }
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[0].get("ISO");
        ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[1].get("PhotographicSensitivity");
        if (exifAttribute2 != null && exifAttribute3 == null) {
            hashMapArr[1].put("PhotographicSensitivity", exifAttribute2);
        }
    }

    public final void m(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        if (m) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.l = ByteOrder.LITTLE_ENDIAN;
        byteOrderedDataInputStream.a(z.length);
        int readInt = byteOrderedDataInputStream.readInt() + 8;
        byte[] bArr = A;
        byteOrderedDataInputStream.a(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                byteOrderedDataInputStream.readFully(bArr2);
                int readInt2 = byteOrderedDataInputStream.readInt();
                int i = length + 8;
                if (Arrays.equals(B, bArr2)) {
                    byte[] bArr3 = new byte[readInt2];
                    byteOrderedDataInputStream.readFully(bArr3);
                    byte[] bArr4 = N;
                    if (ExifInterfaceUtils.b(bArr3, bArr4)) {
                        bArr3 = Arrays.copyOfRange(bArr3, bArr4.length, readInt2);
                    }
                    this.h = i;
                    s(0, bArr3);
                    v(new ByteOrderedDataInputStream(bArr3));
                    return;
                }
                if (readInt2 % 2 == 1) {
                    readInt2++;
                }
                length = i + readInt2;
                if (length == readInt) {
                    return;
                }
                if (length <= readInt) {
                    byteOrderedDataInputStream.a(readInt2);
                } else {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
            } catch (EOFException e) {
                throw new IOException("Encountered corrupt WebP file.", e);
            }
        }
    }

    public final void n(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap hashMap) {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("JPEGInterchangeFormat");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("JPEGInterchangeFormatLength");
        if (exifAttribute != null && exifAttribute2 != null) {
            int e = exifAttribute.e(this.f);
            int e2 = exifAttribute2.e(this.f);
            if (this.c == 7) {
                e += this.i;
            }
            if (e > 0 && e2 > 0 && this.b == null && this.a == null) {
                byteOrderedDataInputStream.a(e);
                byteOrderedDataInputStream.readFully(new byte[e2]);
            }
            if (m) {
                Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + e + ", length: " + e2);
            }
        }
    }

    public final boolean o(HashMap hashMap) {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("ImageLength");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("ImageWidth");
        if (exifAttribute != null && exifAttribute2 != null) {
            int e = exifAttribute.e(this.f);
            int e2 = exifAttribute2.e(this.f);
            if (e <= 512 && e2 <= 512) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void p(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) {
        ByteOrder r2 = r(seekableByteOrderedDataInputStream);
        this.f = r2;
        seekableByteOrderedDataInputStream.l = r2;
        int readUnsignedShort = seekableByteOrderedDataInputStream.readUnsignedShort();
        int i = this.c;
        if (i != 7 && i != 10 && readUnsignedShort != 42) {
            fe.x(Integer.toHexString(readUnsignedShort), "Invalid start code: ");
            return;
        }
        int readInt = seekableByteOrderedDataInputStream.readInt();
        if (readInt >= 8) {
            int i2 = readInt - 8;
            if (i2 > 0) {
                seekableByteOrderedDataInputStream.a(i2);
                return;
            }
            return;
        }
        k8.j(q.g(readInt, "Invalid first Ifd offset: "));
    }

    public final void q() {
        int i = 0;
        while (true) {
            HashMap[] hashMapArr = this.d;
            if (i < hashMapArr.length) {
                StringBuilder j = jb.j("The size of tag group[", i, "]: ");
                j.append(hashMapArr[i].size());
                Log.d("ExifInterface", j.toString());
                for (Map.Entry entry : hashMapArr[i].entrySet()) {
                    ExifAttribute exifAttribute = (ExifAttribute) entry.getValue();
                    Log.d("ExifInterface", "tagName: " + ((String) entry.getKey()) + ", tagType: " + exifAttribute.toString() + ", tagValue: '" + exifAttribute.f(this.f) + "'");
                }
                i++;
            } else {
                return;
            }
        }
    }

    public final void s(int i, byte[] bArr) {
        SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream = new SeekableByteOrderedDataInputStream(bArr);
        p(seekableByteOrderedDataInputStream);
        t(seekableByteOrderedDataInputStream, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0299  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void t(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i) {
        HashMap[] hashMapArr;
        HashSet hashSet;
        boolean z2;
        short s2;
        HashMap[] hashMapArr2;
        long j;
        long j2;
        boolean z3;
        int i2;
        long j3;
        int i3;
        ExifTag exifTag;
        HashSet hashSet2;
        int readUnsignedShort;
        long j4;
        String str;
        int i4 = i;
        int i5 = seekableByteOrderedDataInputStream.k;
        int i6 = seekableByteOrderedDataInputStream.n;
        Integer valueOf = Integer.valueOf(i5);
        HashSet hashSet3 = this.e;
        hashSet3.add(valueOf);
        short readShort = seekableByteOrderedDataInputStream.readShort();
        boolean z4 = m;
        if (z4) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + ((int) readShort));
        }
        if (readShort > 0) {
            short s3 = 0;
            while (true) {
                hashMapArr = this.d;
                if (s3 >= readShort) {
                    break;
                }
                int readUnsignedShort2 = seekableByteOrderedDataInputStream.readUnsignedShort();
                int readUnsignedShort3 = seekableByteOrderedDataInputStream.readUnsignedShort();
                int readInt = seekableByteOrderedDataInputStream.readInt();
                long j5 = seekableByteOrderedDataInputStream.k + 4;
                short s4 = readShort;
                ExifTag exifTag2 = (ExifTag) I[i4].get(Integer.valueOf(readUnsignedShort2));
                if (z4) {
                    Integer valueOf2 = Integer.valueOf(i4);
                    z2 = z4;
                    Integer valueOf3 = Integer.valueOf(readUnsignedShort2);
                    s2 = s3;
                    if (exifTag2 != null) {
                        str = exifTag2.b;
                    } else {
                        str = null;
                    }
                    hashMapArr2 = hashMapArr;
                    hashSet = hashSet3;
                    Log.d("ExifInterface", String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", valueOf2, valueOf3, str, Integer.valueOf(readUnsignedShort3), Integer.valueOf(readInt)));
                } else {
                    hashSet = hashSet3;
                    z2 = z4;
                    s2 = s3;
                    hashMapArr2 = hashMapArr;
                }
                if (exifTag2 == null) {
                    if (z2) {
                        Log.d("ExifInterface", "Skip the tag entry since tag number is not defined: " + readUnsignedShort2);
                    }
                } else {
                    if (readUnsignedShort3 > 0) {
                        if (readUnsignedShort3 < D.length) {
                            int i7 = exifTag2.c;
                            if (i7 != 7 && readUnsignedShort3 != 7 && i7 != readUnsignedShort3 && (i2 = exifTag2.d) != readUnsignedShort3 && (((i7 != 4 && i2 != 4) || readUnsignedShort3 != 3) && (((i7 != 9 && i2 != 9) || readUnsignedShort3 != 8) && ((i7 != 12 && i2 != 12) || readUnsignedShort3 != 11)))) {
                                if (z2) {
                                    Log.d("ExifInterface", "Skip the tag entry since data format (" + C[readUnsignedShort3] + ") is unexpected for tag: " + exifTag2.b);
                                }
                            } else {
                                if (readUnsignedShort3 == 7) {
                                    readUnsignedShort3 = i7;
                                }
                                j = j5;
                                j2 = readInt * r7[readUnsignedShort3];
                                if (j2 >= 0 && j2 <= 2147483647L) {
                                    z3 = true;
                                    if (z3) {
                                    }
                                    s3 = (short) (s2 + 1);
                                    i4 = i;
                                    hashSet3 = hashSet2;
                                    readShort = s4;
                                    z4 = z2;
                                } else {
                                    if (z2) {
                                        Log.d("ExifInterface", "Skip the tag entry since the number of components is invalid: " + readInt);
                                    }
                                    z3 = false;
                                    if (z3) {
                                        seekableByteOrderedDataInputStream.h(j);
                                        hashSet2 = hashSet;
                                    } else {
                                        long j6 = j;
                                        if (j2 > 4) {
                                            int readInt2 = seekableByteOrderedDataInputStream.readInt();
                                            if (z2) {
                                                i3 = readUnsignedShort2;
                                                Log.d("ExifInterface", "seek to data offset: " + readInt2);
                                            } else {
                                                i3 = readUnsignedShort2;
                                            }
                                            if (this.c == 7) {
                                                if ("MakerNote".equals(exifTag2.b)) {
                                                    this.i = readInt2;
                                                } else if (i4 == 6 && "ThumbnailImage".equals(exifTag2.b)) {
                                                    this.j = readInt2;
                                                    this.k = readInt;
                                                    ExifAttribute c = ExifAttribute.c(6, this.f);
                                                    j3 = j6;
                                                    ExifAttribute a = ExifAttribute.a(this.j, this.f);
                                                    exifTag = exifTag2;
                                                    ExifAttribute a2 = ExifAttribute.a(this.k, this.f);
                                                    hashMapArr2[4].put("Compression", c);
                                                    hashMapArr2[4].put("JPEGInterchangeFormat", a);
                                                    hashMapArr2[4].put("JPEGInterchangeFormatLength", a2);
                                                    seekableByteOrderedDataInputStream.h(readInt2);
                                                }
                                            }
                                            exifTag = exifTag2;
                                            j3 = j6;
                                            seekableByteOrderedDataInputStream.h(readInt2);
                                        } else {
                                            j3 = j6;
                                            i3 = readUnsignedShort2;
                                            exifTag = exifTag2;
                                        }
                                        Integer num = (Integer) L.get(Integer.valueOf(i3));
                                        if (z2) {
                                            Log.d("ExifInterface", "nextIfdType: " + num + " byteCount: " + j2);
                                        }
                                        if (num != null) {
                                            if (readUnsignedShort3 != 3) {
                                                if (readUnsignedShort3 != 4) {
                                                    if (readUnsignedShort3 != 8) {
                                                        if (readUnsignedShort3 != 9 && readUnsignedShort3 != 13) {
                                                            j4 = -1;
                                                        } else {
                                                            readUnsignedShort = seekableByteOrderedDataInputStream.readInt();
                                                        }
                                                    } else {
                                                        readUnsignedShort = seekableByteOrderedDataInputStream.readShort();
                                                    }
                                                } else {
                                                    j4 = seekableByteOrderedDataInputStream.readInt() & 4294967295L;
                                                }
                                                if (z2) {
                                                    Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j4), exifTag.b));
                                                }
                                                if (j4 > 0 || (i6 != -1 && j4 >= i6)) {
                                                    hashSet2 = hashSet;
                                                    if (z2) {
                                                        String h = q.h(j4, "Skip jump into the IFD since its offset is invalid: ");
                                                        if (i6 != -1) {
                                                            h = h + " (total length: " + i6 + ")";
                                                        }
                                                        Log.d("ExifInterface", h);
                                                    }
                                                } else {
                                                    hashSet2 = hashSet;
                                                    if (!hashSet2.contains(Integer.valueOf((int) j4))) {
                                                        seekableByteOrderedDataInputStream.h(j4);
                                                        t(seekableByteOrderedDataInputStream, num.intValue());
                                                    } else if (z2) {
                                                        Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j4 + ")");
                                                    }
                                                }
                                                seekableByteOrderedDataInputStream.h(j3);
                                            } else {
                                                readUnsignedShort = seekableByteOrderedDataInputStream.readUnsignedShort();
                                            }
                                            j4 = readUnsignedShort;
                                            if (z2) {
                                            }
                                            if (j4 > 0) {
                                            }
                                            hashSet2 = hashSet;
                                            if (z2) {
                                            }
                                            seekableByteOrderedDataInputStream.h(j3);
                                        } else {
                                            hashSet2 = hashSet;
                                            long j7 = j3;
                                            int i8 = seekableByteOrderedDataInputStream.k + this.h;
                                            byte[] bArr = new byte[(int) j2];
                                            seekableByteOrderedDataInputStream.readFully(bArr);
                                            ExifAttribute exifAttribute = new ExifAttribute(i8, bArr, readUnsignedShort3, readInt);
                                            HashMap hashMap = hashMapArr2[i];
                                            String str2 = exifTag.b;
                                            hashMap.put(str2, exifAttribute);
                                            if ("DNGVersion".equals(str2)) {
                                                this.c = 3;
                                            }
                                            if ((("Make".equals(str2) || "Model".equals(str2)) && exifAttribute.f(this.f).contains("PENTAX")) || ("Compression".equals(str2) && exifAttribute.e(this.f) == 65535)) {
                                                this.c = 8;
                                            }
                                            if (seekableByteOrderedDataInputStream.k != j7) {
                                                seekableByteOrderedDataInputStream.h(j7);
                                            }
                                        }
                                    }
                                    s3 = (short) (s2 + 1);
                                    i4 = i;
                                    hashSet3 = hashSet2;
                                    readShort = s4;
                                    z4 = z2;
                                }
                            }
                        }
                    }
                    j = j5;
                    if (z2) {
                        Log.d("ExifInterface", "Skip the tag entry since data format is invalid: " + readUnsignedShort3);
                    }
                    j2 = 0;
                    z3 = false;
                    if (z3) {
                    }
                    s3 = (short) (s2 + 1);
                    i4 = i;
                    hashSet3 = hashSet2;
                    readShort = s4;
                    z4 = z2;
                }
                j = j5;
                j2 = 0;
                z3 = false;
                if (z3) {
                }
                s3 = (short) (s2 + 1);
                i4 = i;
                hashSet3 = hashSet2;
                readShort = s4;
                z4 = z2;
            }
            HashSet hashSet4 = hashSet3;
            boolean z5 = z4;
            int readInt3 = seekableByteOrderedDataInputStream.readInt();
            if (z5) {
                Log.d("ExifInterface", String.format("nextIfdOffset: %d", Integer.valueOf(readInt3)));
            }
            long j8 = readInt3;
            if (j8 > 0) {
                if (!hashSet4.contains(Integer.valueOf(readInt3))) {
                    seekableByteOrderedDataInputStream.h(j8);
                    if (hashMapArr[4].isEmpty()) {
                        t(seekableByteOrderedDataInputStream, 4);
                        return;
                    } else {
                        if (hashMapArr[5].isEmpty()) {
                            t(seekableByteOrderedDataInputStream, 5);
                            return;
                        }
                        return;
                    }
                }
                if (z5) {
                    Log.d("ExifInterface", "Stop reading file since re-reading an IFD may cause an infinite loop: " + readInt3);
                    return;
                }
                return;
            }
            if (z5) {
                Log.d("ExifInterface", "Stop reading file since a wrong offset may cause an infinite loop: " + readInt3);
            }
        }
    }

    public final void u(String str, int i, String str2) {
        HashMap[] hashMapArr = this.d;
        if (!hashMapArr[i].isEmpty() && hashMapArr[i].get(str) != null) {
            HashMap hashMap = hashMapArr[i];
            hashMap.put(str2, (ExifAttribute) hashMap.get(str));
            hashMapArr[i].remove(str);
        }
    }

    public final void v(ByteOrderedDataInputStream byteOrderedDataInputStream) {
        ExifAttribute exifAttribute;
        int e;
        HashMap hashMap = this.d[4];
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("Compression");
        if (exifAttribute2 != null) {
            int e2 = exifAttribute2.e(this.f);
            if (e2 != 1) {
                if (e2 != 6) {
                    if (e2 != 7) {
                        return;
                    }
                } else {
                    n(byteOrderedDataInputStream, hashMap);
                    return;
                }
            }
            ExifAttribute exifAttribute3 = (ExifAttribute) hashMap.get("BitsPerSample");
            if (exifAttribute3 != null) {
                int[] iArr = (int[]) exifAttribute3.g(this.f);
                int[] iArr2 = n;
                if (Arrays.equals(iArr2, iArr) || (this.c == 3 && (exifAttribute = (ExifAttribute) hashMap.get("PhotometricInterpretation")) != null && (((e = exifAttribute.e(this.f)) == 1 && Arrays.equals(iArr, o)) || (e == 6 && Arrays.equals(iArr, iArr2))))) {
                    ExifAttribute exifAttribute4 = (ExifAttribute) hashMap.get("StripOffsets");
                    ExifAttribute exifAttribute5 = (ExifAttribute) hashMap.get("StripByteCounts");
                    if (exifAttribute4 != null && exifAttribute5 != null) {
                        long[] a = ExifInterfaceUtils.a(exifAttribute4.g(this.f));
                        long[] a2 = ExifInterfaceUtils.a(exifAttribute5.g(this.f));
                        if (a != null && a.length != 0) {
                            if (a2 != null && a2.length != 0) {
                                if (a.length != a2.length) {
                                    Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
                                    return;
                                }
                                long j = 0;
                                for (long j2 : a2) {
                                    j += j2;
                                }
                                byte[] bArr = new byte[(int) j];
                                this.g = true;
                                int i = 0;
                                int i2 = 0;
                                for (int i3 = 0; i3 < a.length; i3++) {
                                    int i4 = (int) a[i3];
                                    int i5 = (int) a2[i3];
                                    if (i3 < a.length - 1 && i4 + i5 != a[i3 + 1]) {
                                        this.g = false;
                                    }
                                    int i6 = i4 - i;
                                    if (i6 < 0) {
                                        Log.d("ExifInterface", "Invalid strip offset value");
                                        return;
                                    }
                                    try {
                                        byteOrderedDataInputStream.a(i6);
                                        int i7 = i + i6;
                                        byte[] bArr2 = new byte[i5];
                                        try {
                                            byteOrderedDataInputStream.readFully(bArr2);
                                            i = i7 + i5;
                                            System.arraycopy(bArr2, 0, bArr, i2, i5);
                                            i2 += i5;
                                        } catch (EOFException unused) {
                                            Log.d("ExifInterface", "Failed to read " + i5 + " bytes.");
                                            return;
                                        }
                                    } catch (EOFException unused2) {
                                        Log.d("ExifInterface", "Failed to skip " + i6 + " bytes.");
                                        return;
                                    }
                                }
                                if (this.g) {
                                    long j3 = a[0];
                                    return;
                                }
                                return;
                            }
                            Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
                            return;
                        }
                        Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
                        return;
                    }
                    return;
                }
            }
            if (m) {
                Log.d("ExifInterface", "Unsupported data type value");
                return;
            }
            return;
        }
        n(byteOrderedDataInputStream, hashMap);
    }

    public final void w(int i, int i2) {
        HashMap[] hashMapArr = this.d;
        boolean isEmpty = hashMapArr[i].isEmpty();
        boolean z2 = m;
        if (!isEmpty && !hashMapArr[i2].isEmpty()) {
            ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[i].get("ImageLength");
            ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[i].get("ImageWidth");
            ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[i2].get("ImageLength");
            ExifAttribute exifAttribute4 = (ExifAttribute) hashMapArr[i2].get("ImageWidth");
            if (exifAttribute != null && exifAttribute2 != null) {
                if (exifAttribute3 != null && exifAttribute4 != null) {
                    int e = exifAttribute.e(this.f);
                    int e2 = exifAttribute2.e(this.f);
                    int e3 = exifAttribute3.e(this.f);
                    int e4 = exifAttribute4.e(this.f);
                    if (e < e3 && e2 < e4) {
                        HashMap hashMap = hashMapArr[i];
                        hashMapArr[i] = hashMapArr[i2];
                        hashMapArr[i2] = hashMap;
                        return;
                    }
                    return;
                }
                if (z2) {
                    Log.d("ExifInterface", "Second image does not contain valid size information");
                    return;
                }
                return;
            }
            if (z2) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (z2) {
            Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
        }
    }

    public final void x(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i) {
        ExifAttribute c;
        ExifAttribute c2;
        HashMap[] hashMapArr = this.d;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[i].get("DefaultCropSize");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[i].get("SensorTopBorder");
        ExifAttribute exifAttribute3 = (ExifAttribute) hashMapArr[i].get("SensorLeftBorder");
        ExifAttribute exifAttribute4 = (ExifAttribute) hashMapArr[i].get("SensorBottomBorder");
        ExifAttribute exifAttribute5 = (ExifAttribute) hashMapArr[i].get("SensorRightBorder");
        if (exifAttribute != null) {
            int i2 = exifAttribute.a;
            ByteOrder byteOrder = this.f;
            if (i2 == 5) {
                Rational[] rationalArr = (Rational[]) exifAttribute.g(byteOrder);
                if (rationalArr != null && rationalArr.length == 2) {
                    c = ExifAttribute.b(rationalArr[0], this.f);
                    c2 = ExifAttribute.b(rationalArr[1], this.f);
                } else {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(rationalArr));
                    return;
                }
            } else {
                int[] iArr = (int[]) exifAttribute.g(byteOrder);
                if (iArr != null && iArr.length == 2) {
                    c = ExifAttribute.c(iArr[0], this.f);
                    c2 = ExifAttribute.c(iArr[1], this.f);
                } else {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
            }
            hashMapArr[i].put("ImageWidth", c);
            hashMapArr[i].put("ImageLength", c2);
            return;
        }
        if (exifAttribute2 != null && exifAttribute3 != null && exifAttribute4 != null && exifAttribute5 != null) {
            int e = exifAttribute2.e(this.f);
            int e2 = exifAttribute4.e(this.f);
            int e3 = exifAttribute5.e(this.f);
            int e4 = exifAttribute3.e(this.f);
            if (e2 > e && e3 > e4) {
                ExifAttribute c3 = ExifAttribute.c(e2 - e, this.f);
                ExifAttribute c4 = ExifAttribute.c(e3 - e4, this.f);
                hashMapArr[i].put("ImageLength", c3);
                hashMapArr[i].put("ImageWidth", c4);
                return;
            }
            return;
        }
        ExifAttribute exifAttribute6 = (ExifAttribute) hashMapArr[i].get("ImageLength");
        ExifAttribute exifAttribute7 = (ExifAttribute) hashMapArr[i].get("ImageWidth");
        if (exifAttribute6 == null || exifAttribute7 == null) {
            ExifAttribute exifAttribute8 = (ExifAttribute) hashMapArr[i].get("JPEGInterchangeFormat");
            ExifAttribute exifAttribute9 = (ExifAttribute) hashMapArr[i].get("JPEGInterchangeFormatLength");
            if (exifAttribute8 != null && exifAttribute9 != null) {
                int e5 = exifAttribute8.e(this.f);
                int e6 = exifAttribute8.e(this.f);
                seekableByteOrderedDataInputStream.h(e5);
                byte[] bArr = new byte[e6];
                seekableByteOrderedDataInputStream.readFully(bArr);
                f(new ByteOrderedDataInputStream(bArr), e5, i);
            }
        }
    }

    public final void y() {
        w(0, 5);
        w(0, 4);
        w(5, 4);
        HashMap[] hashMapArr = this.d;
        ExifAttribute exifAttribute = (ExifAttribute) hashMapArr[1].get("PixelXDimension");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMapArr[1].get("PixelYDimension");
        if (exifAttribute != null && exifAttribute2 != null) {
            hashMapArr[0].put("ImageWidth", exifAttribute);
            hashMapArr[0].put("ImageLength", exifAttribute2);
        }
        if (hashMapArr[4].isEmpty() && o(hashMapArr[5])) {
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap();
        }
        if (!o(hashMapArr[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        u("ThumbnailOrientation", 0, "Orientation");
        u("ThumbnailImageLength", 0, "ImageLength");
        u("ThumbnailImageWidth", 0, "ImageWidth");
        u("ThumbnailOrientation", 5, "Orientation");
        u("ThumbnailImageLength", 5, "ImageLength");
        u("ThumbnailImageWidth", 5, "ImageWidth");
        u("Orientation", 4, "ThumbnailOrientation");
        u("ImageLength", 4, "ThumbnailImageLength");
        u("ImageWidth", 4, "ThumbnailImageWidth");
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ByteOrderedDataInputStream extends InputStream implements DataInput {
        public final DataInputStream j;
        public int k;
        public ByteOrder l;
        public byte[] m;
        public final int n;

        public ByteOrderedDataInputStream(InputStream inputStream, int i) {
            int i2;
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.j = dataInputStream;
            dataInputStream.mark(0);
            this.k = 0;
            this.l = byteOrder;
            if (inputStream instanceof ByteOrderedDataInputStream) {
                i2 = ((ByteOrderedDataInputStream) inputStream).n;
            } else {
                i2 = -1;
            }
            this.n = i2;
        }

        public final void a(int i) {
            int i2 = 0;
            while (i2 < i) {
                int i3 = i - i2;
                DataInputStream dataInputStream = this.j;
                int skip = (int) dataInputStream.skip(i3);
                if (skip <= 0) {
                    if (this.m == null) {
                        this.m = new byte[8192];
                    }
                    skip = dataInputStream.read(this.m, 0, Math.min(8192, i3));
                    if (skip == -1) {
                        throw new EOFException(jb.d("Reached EOF while skipping ", i, " bytes."));
                    }
                }
                i2 += skip;
            }
            this.k += i2;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.j.available();
        }

        @Override // java.io.InputStream
        public final void mark(int i) {
            throw new UnsupportedOperationException("Mark is currently unsupported");
        }

        @Override // java.io.InputStream
        public final int read() {
            this.k++;
            return this.j.read();
        }

        @Override // java.io.DataInput
        public final boolean readBoolean() {
            this.k++;
            return this.j.readBoolean();
        }

        @Override // java.io.DataInput
        public final byte readByte() {
            this.k++;
            int read = this.j.read();
            if (read >= 0) {
                return (byte) read;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final char readChar() {
            this.k += 2;
            return this.j.readChar();
        }

        @Override // java.io.DataInput
        public final double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public final float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr) {
            this.k += bArr.length;
            this.j.readFully(bArr);
        }

        @Override // java.io.DataInput
        public final int readInt() {
            this.k += 4;
            DataInputStream dataInputStream = this.j;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            int read3 = dataInputStream.read();
            int read4 = dataInputStream.read();
            if ((read | read2 | read3 | read4) >= 0) {
                ByteOrder byteOrder = this.l;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                }
                fe.x(this.l, "Invalid byte order: ");
                return 0;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final String readLine() {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        @Override // java.io.DataInput
        public final long readLong() {
            this.k += 8;
            DataInputStream dataInputStream = this.j;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            int read3 = dataInputStream.read();
            int read4 = dataInputStream.read();
            int read5 = dataInputStream.read();
            int read6 = dataInputStream.read();
            int read7 = dataInputStream.read();
            int read8 = dataInputStream.read();
            if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                ByteOrder byteOrder = this.l;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                }
                fe.x(this.l, "Invalid byte order: ");
                return 0L;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final short readShort() {
            this.k += 2;
            DataInputStream dataInputStream = this.j;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            if ((read | read2) >= 0) {
                ByteOrder byteOrder = this.l;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (short) ((read2 << 8) + read);
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (short) ((read << 8) + read2);
                }
                fe.x(this.l, "Invalid byte order: ");
                return (short) 0;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public final String readUTF() {
            this.k += 2;
            return this.j.readUTF();
        }

        @Override // java.io.DataInput
        public final int readUnsignedByte() {
            this.k++;
            return this.j.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public final int readUnsignedShort() {
            this.k += 2;
            DataInputStream dataInputStream = this.j;
            int read = dataInputStream.read();
            int read2 = dataInputStream.read();
            if ((read | read2) >= 0) {
                ByteOrder byteOrder = this.l;
                if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                    return (read2 << 8) + read;
                }
                if (byteOrder == ByteOrder.BIG_ENDIAN) {
                    return (read << 8) + read2;
                }
                fe.x(this.l, "Invalid byte order: ");
                return 0;
            }
            throw new EOFException();
        }

        @Override // java.io.InputStream
        public final void reset() {
            throw new UnsupportedOperationException("Reset is currently unsupported");
        }

        @Override // java.io.DataInput
        public final int skipBytes(int i) {
            throw new UnsupportedOperationException("skipBytes is currently unsupported");
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr, int i, int i2) {
            this.k += i2;
            this.j.readFully(bArr, i, i2);
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            int read = this.j.read(bArr, i, i2);
            this.k += read;
            return read;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public ByteOrderedDataInputStream(InputStream inputStream) {
            this(inputStream, 0);
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ByteOrderedDataInputStream(byte[] bArr) {
            this(r0, 0);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            this.n = bArr.length;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ExifAttribute {
        public final int a;
        public final int b;
        public final long c;
        public final byte[] d;

        public ExifAttribute(long j, byte[] bArr, int i, int i2) {
            this.a = i;
            this.b = i2;
            this.c = j;
            this.d = bArr;
        }

        public static ExifAttribute a(long j, ByteOrder byteOrder) {
            long[] jArr = {j};
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.D[4]]);
            wrap.order(byteOrder);
            wrap.putInt((int) jArr[0]);
            return new ExifAttribute(wrap.array(), 4, 1);
        }

        public static ExifAttribute b(Rational rational, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.D[5]]);
            wrap.order(byteOrder);
            Rational rational2 = new Rational[]{rational}[0];
            wrap.putInt((int) rational2.a);
            wrap.putInt((int) rational2.b);
            return new ExifAttribute(wrap.array(), 5, 1);
        }

        public static ExifAttribute c(int i, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.D[3]]);
            wrap.order(byteOrder);
            wrap.putShort((short) new int[]{i}[0]);
            return new ExifAttribute(wrap.array(), 3, 1);
        }

        public final double d(ByteOrder byteOrder) {
            Object g = g(byteOrder);
            if (g != null) {
                if (g instanceof String) {
                    return Double.parseDouble((String) g);
                }
                if (g instanceof long[]) {
                    if (((long[]) g).length == 1) {
                        return r3[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (g instanceof int[]) {
                    if (((int[]) g).length == 1) {
                        return r3[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (g instanceof double[]) {
                    double[] dArr = (double[]) g;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (g instanceof Rational[]) {
                    Rational[] rationalArr = (Rational[]) g;
                    if (rationalArr.length == 1) {
                        Rational rational = rationalArr[0];
                        return rational.a / rational.b;
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                throw new NumberFormatException("Couldn't find a double value");
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }

        public final int e(ByteOrder byteOrder) {
            Object g = g(byteOrder);
            if (g != null) {
                if (g instanceof String) {
                    return Integer.parseInt((String) g);
                }
                if (g instanceof long[]) {
                    long[] jArr = (long[]) g;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (g instanceof int[]) {
                    int[] iArr = (int[]) g;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                throw new NumberFormatException("Couldn't find a integer value");
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        public final String f(ByteOrder byteOrder) {
            Object g = g(byteOrder);
            if (g != null) {
                if (g instanceof String) {
                    return (String) g;
                }
                StringBuilder sb = new StringBuilder();
                int i = 0;
                if (g instanceof long[]) {
                    long[] jArr = (long[]) g;
                    while (i < jArr.length) {
                        sb.append(jArr[i]);
                        i++;
                        if (i != jArr.length) {
                            sb.append(",");
                        }
                    }
                    return sb.toString();
                }
                if (g instanceof int[]) {
                    int[] iArr = (int[]) g;
                    while (i < iArr.length) {
                        sb.append(iArr[i]);
                        i++;
                        if (i != iArr.length) {
                            sb.append(",");
                        }
                    }
                    return sb.toString();
                }
                if (g instanceof double[]) {
                    double[] dArr = (double[]) g;
                    while (i < dArr.length) {
                        sb.append(dArr[i]);
                        i++;
                        if (i != dArr.length) {
                            sb.append(",");
                        }
                    }
                    return sb.toString();
                }
                if (g instanceof Rational[]) {
                    Rational[] rationalArr = (Rational[]) g;
                    while (i < rationalArr.length) {
                        sb.append(rationalArr[i].a);
                        sb.append('/');
                        sb.append(rationalArr[i].b);
                        i++;
                        if (i != rationalArr.length) {
                            sb.append(",");
                        }
                    }
                    return sb.toString();
                }
                return null;
            }
            return null;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0018. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0032: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]) (LINE:51), block:B:107:0x0032 */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0134 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r13v14, types: [int[]] */
        /* JADX WARN: Type inference failed for: r13v15, types: [long[]] */
        /* JADX WARN: Type inference failed for: r13v16, types: [androidx.exifinterface.media.ExifInterface$Rational[]] */
        /* JADX WARN: Type inference failed for: r13v17, types: [int[]] */
        /* JADX WARN: Type inference failed for: r13v18, types: [int[]] */
        /* JADX WARN: Type inference failed for: r13v19, types: [androidx.exifinterface.media.ExifInterface$Rational[]] */
        /* JADX WARN: Type inference failed for: r13v20, types: [double[]] */
        /* JADX WARN: Type inference failed for: r13v21, types: [java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r13v22, types: [double[]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Serializable g(ByteOrder byteOrder) {
            ByteOrderedDataInputStream byteOrderedDataInputStream;
            InputStream inputStream;
            String str;
            byte b;
            ?? r13;
            byte[] bArr = this.d;
            InputStream inputStream2 = null;
            try {
                try {
                    byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
                    try {
                        byteOrderedDataInputStream.l = byteOrder;
                        int i = this.a;
                        int i2 = 0;
                        int i3 = this.b;
                        switch (i) {
                            case 1:
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                if (bArr.length == 1 && (b = bArr[0]) >= 0 && b <= 1) {
                                    String str2 = new String(new char[]{(char) (b + 48)});
                                    try {
                                        byteOrderedDataInputStream.close();
                                        return str2;
                                    } catch (IOException e) {
                                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e);
                                        return str2;
                                    }
                                }
                                str = new String(bArr, ExifInterface.M);
                                try {
                                    byteOrderedDataInputStream.close();
                                    return str;
                                } catch (IOException e2) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e2);
                                    return str;
                                }
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                if (i3 >= ExifInterface.E.length) {
                                    int i4 = 0;
                                    while (true) {
                                        byte[] bArr2 = ExifInterface.E;
                                        if (i4 < bArr2.length) {
                                            if (bArr[i4] == bArr2[i4]) {
                                                i4++;
                                            }
                                        } else {
                                            i2 = bArr2.length;
                                        }
                                    }
                                }
                                StringBuilder sb = new StringBuilder();
                                while (i2 < i3) {
                                    byte b2 = bArr[i2];
                                    if (b2 != 0) {
                                        if (b2 >= 32) {
                                            sb.append((char) b2);
                                        } else {
                                            sb.append('?');
                                        }
                                        i2++;
                                    } else {
                                        str = sb.toString();
                                        byteOrderedDataInputStream.close();
                                        return str;
                                    }
                                }
                                str = sb.toString();
                                byteOrderedDataInputStream.close();
                                return str;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                r13 = new int[i3];
                                while (i2 < i3) {
                                    r13[i2] = byteOrderedDataInputStream.readUnsignedShort();
                                    i2++;
                                }
                                try {
                                    byteOrderedDataInputStream.close();
                                    return r13;
                                } catch (IOException e3) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e3);
                                    return r13;
                                }
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                r13 = new long[i3];
                                while (i2 < i3) {
                                    r13[i2] = byteOrderedDataInputStream.readInt() & 4294967295L;
                                    i2++;
                                }
                                byteOrderedDataInputStream.close();
                                return r13;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                r13 = new Rational[i3];
                                while (i2 < i3) {
                                    r13[i2] = new Rational(byteOrderedDataInputStream.readInt() & 4294967295L, byteOrderedDataInputStream.readInt() & 4294967295L);
                                    i2++;
                                }
                                byteOrderedDataInputStream.close();
                                return r13;
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                r13 = new int[i3];
                                while (i2 < i3) {
                                    r13[i2] = byteOrderedDataInputStream.readShort();
                                    i2++;
                                }
                                byteOrderedDataInputStream.close();
                                return r13;
                            case KeyModifiers.a /* 9 */:
                                r13 = new int[i3];
                                while (i2 < i3) {
                                    r13[i2] = byteOrderedDataInputStream.readInt();
                                    i2++;
                                }
                                byteOrderedDataInputStream.close();
                                return r13;
                            case KeyModifiers.b /* 10 */:
                                r13 = new Rational[i3];
                                while (i2 < i3) {
                                    r13[i2] = new Rational(byteOrderedDataInputStream.readInt(), byteOrderedDataInputStream.readInt());
                                    i2++;
                                }
                                byteOrderedDataInputStream.close();
                                return r13;
                            case 11:
                                r13 = new double[i3];
                                while (i2 < i3) {
                                    r13[i2] = byteOrderedDataInputStream.readFloat();
                                    i2++;
                                }
                                byteOrderedDataInputStream.close();
                                return r13;
                            case KeyModifiers.c /* 12 */:
                                r13 = new double[i3];
                                while (i2 < i3) {
                                    r13[i2] = byteOrderedDataInputStream.readDouble();
                                    i2++;
                                }
                                byteOrderedDataInputStream.close();
                                return r13;
                            default:
                                try {
                                    byteOrderedDataInputStream.close();
                                    return null;
                                } catch (IOException e4) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e4);
                                    return null;
                                }
                        }
                    } catch (IOException e5) {
                        e = e5;
                        Log.w("ExifInterface", "IOException occurred during reading a value", e);
                        if (byteOrderedDataInputStream != null) {
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (IOException e6) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e6);
                            }
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e7) {
                            Log.e("ExifInterface", "IOException occurred while closing InputStream", e7);
                        }
                    }
                    throw th;
                }
            } catch (IOException e8) {
                e = e8;
                byteOrderedDataInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                if (inputStream2 != null) {
                }
                throw th;
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("(");
            sb.append(ExifInterface.C[this.a]);
            sb.append(", data length:");
            return jb.i(sb, this.d.length, ")");
        }

        public ExifAttribute(byte[] bArr, int i, int i2) {
            this(-1L, bArr, i, i2);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ExifTag {
        public final int a;
        public final String b;
        public final int c;
        public final int d;

        public ExifTag(String str, int i, int i2) {
            this.b = str;
            this.a = i;
            this.c = i2;
            this.d = -1;
        }

        public ExifTag(String str, int i, int i2, int i3) {
            this.b = str;
            this.a = i;
            this.c = i2;
            this.d = i3;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SeekableByteOrderedDataInputStream extends ByteOrderedDataInputStream {
        public SeekableByteOrderedDataInputStream(InputStream inputStream) {
            super(inputStream);
            if (inputStream.markSupported()) {
                this.j.mark(Integer.MAX_VALUE);
            } else {
                u2.g("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
                throw null;
            }
        }

        public final void h(long j) {
            int i = this.k;
            if (i > j) {
                this.k = 0;
                this.j.reset();
            } else {
                j -= i;
            }
            a((int) j);
        }

        public SeekableByteOrderedDataInputStream(byte[] bArr) {
            super(bArr);
            this.j.mark(Integer.MAX_VALUE);
        }
    }
}
