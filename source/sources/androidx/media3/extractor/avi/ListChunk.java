package androidx.media3.extractor.avi;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.q;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ListChunk implements AviChunk {
    public final ImmutableList a;
    public final int b;

    public ListChunk(int i, ImmutableList immutableList) {
        this.b = i;
        this.a = immutableList;
    }

    public static ListChunk c(int i, ParsableByteArray parsableByteArray) {
        String str;
        int i2;
        AviChunk streamFormatChunk;
        String str2;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        int i3 = parsableByteArray.c;
        int i4 = -2;
        while (parsableByteArray.a() > 8) {
            int o = parsableByteArray.o();
            int o2 = parsableByteArray.b + parsableByteArray.o();
            parsableByteArray.L(o2);
            if (o == 1414744396) {
                streamFormatChunk = c(parsableByteArray.o(), parsableByteArray);
            } else {
                AviStreamHeaderChunk aviStreamHeaderChunk = null;
                switch (o) {
                    case 1718776947:
                        if (i4 == 2) {
                            parsableByteArray.N(4);
                            int o3 = parsableByteArray.o();
                            int o4 = parsableByteArray.o();
                            parsableByteArray.N(4);
                            int o5 = parsableByteArray.o();
                            switch (o5) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str2 = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str2 = "video/avc";
                                    break;
                                case 842289229:
                                    str2 = "video/mp42";
                                    break;
                                case 859066445:
                                    str2 = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str2 = "video/mjpeg";
                                    break;
                                default:
                                    str2 = null;
                                    break;
                            }
                            if (str2 == null) {
                                q.x("Ignoring track with unsupported compression ", o5, "StreamFormatChunk");
                                break;
                            } else {
                                Format.Builder builder2 = new Format.Builder();
                                builder2.v = o3;
                                builder2.w = o4;
                                builder2.o = MimeTypes.l(str2);
                                streamFormatChunk = new StreamFormatChunk(new Format(builder2));
                                break;
                            }
                        } else if (i4 == 1) {
                            int s = parsableByteArray.s();
                            if (s == 1) {
                                str = "audio/raw";
                            } else if (s != 85) {
                                if (s == 255) {
                                    str = "audio/mp4a-latm";
                                } else if (s != 8192) {
                                    if (s != 8193) {
                                        str = null;
                                    } else {
                                        str = "audio/vnd.dts";
                                    }
                                } else {
                                    str = "audio/ac3";
                                }
                            } else {
                                str = "audio/mpeg";
                            }
                            if (str == null) {
                                q.x("Ignoring track with unsupported format tag ", s, "StreamFormatChunk");
                                break;
                            } else {
                                int s2 = parsableByteArray.s();
                                int o6 = parsableByteArray.o();
                                parsableByteArray.N(6);
                                int s3 = parsableByteArray.s();
                                String str3 = Util.a;
                                int t = Util.t(s3, ByteOrder.LITTLE_ENDIAN);
                                if (parsableByteArray.a() > 0) {
                                    i2 = parsableByteArray.s();
                                } else {
                                    i2 = 0;
                                }
                                Format.Builder builder3 = new Format.Builder();
                                builder3.o = MimeTypes.l(str);
                                builder3.I = s2;
                                builder3.K = o6;
                                if (str.equals("audio/raw") && t != 0) {
                                    builder3.L = t;
                                }
                                if (str.equals("audio/mp4a-latm") && i2 > 0) {
                                    byte[] bArr = new byte[i2];
                                    parsableByteArray.k(bArr, 0, i2);
                                    builder3.r = ImmutableList.t(bArr);
                                }
                                streamFormatChunk = new StreamFormatChunk(new Format(builder3));
                                break;
                            }
                        } else {
                            Log.f("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(Util.w(i4)));
                            break;
                        }
                    case 1751742049:
                        int o7 = parsableByteArray.o();
                        parsableByteArray.N(8);
                        int o8 = parsableByteArray.o();
                        int o9 = parsableByteArray.o();
                        parsableByteArray.N(4);
                        parsableByteArray.o();
                        parsableByteArray.N(12);
                        streamFormatChunk = new AviMainHeaderChunk(o7, o8, o9);
                        break;
                    case 1752331379:
                        int o10 = parsableByteArray.o();
                        parsableByteArray.N(12);
                        parsableByteArray.o();
                        int o11 = parsableByteArray.o();
                        int o12 = parsableByteArray.o();
                        parsableByteArray.N(4);
                        int o13 = parsableByteArray.o();
                        int o14 = parsableByteArray.o();
                        parsableByteArray.N(4);
                        aviStreamHeaderChunk = new AviStreamHeaderChunk(o10, o11, o12, o13, o14, parsableByteArray.o());
                        break;
                    case 1852994675:
                        streamFormatChunk = new StreamNameChunk(parsableByteArray.x(parsableByteArray.a(), StandardCharsets.UTF_8));
                        break;
                }
                streamFormatChunk = aviStreamHeaderChunk;
            }
            if (streamFormatChunk != null) {
                if (streamFormatChunk.a() == 1752331379) {
                    i4 = ((AviStreamHeaderChunk) streamFormatChunk).b();
                }
                builder.d(streamFormatChunk);
            }
            parsableByteArray.M(o2);
            parsableByteArray.L(i3);
        }
        return new ListChunk(i, builder.i());
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public final int a() {
        return this.b;
    }

    public final AviChunk b(Class cls) {
        UnmodifiableListIterator listIterator = this.a.listIterator(0);
        while (listIterator.hasNext()) {
            AviChunk aviChunk = (AviChunk) listIterator.next();
            if (aviChunk.getClass() == cls) {
                return aviChunk;
            }
        }
        return null;
    }
}
