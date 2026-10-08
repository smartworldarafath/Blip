package androidx.media3.extractor.jpeg;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.extractor.jpeg.MotionPhotoDescription;
import com.google.common.collect.ImmutableList;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class XmpMotionPhotoDescriptionParser {
    public static final String[] a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    public static final String[] b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    public static final String[] c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005e, code lost:
    
        if (r6 == (-1)) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MotionPhotoDescription a(String str) {
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new StringReader(str));
        newPullParser.next();
        if (XmlPullParserUtil.c(newPullParser, "x:xmpmeta")) {
            ImmutableList r = ImmutableList.r();
            long j = -9223372036854775807L;
            loop0: while (true) {
                newPullParser.next();
                if (XmlPullParserUtil.c(newPullParser, "rdf:Description")) {
                    int i = 0;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= 4) {
                            break loop0;
                        }
                        String a2 = XmlPullParserUtil.a(newPullParser, a[i2]);
                        if (a2 != null) {
                            if (Integer.parseInt(a2) != 1) {
                                break;
                            }
                            int i3 = 0;
                            while (true) {
                                if (i3 >= 4) {
                                    break;
                                }
                                String a3 = XmlPullParserUtil.a(newPullParser, b[i3]);
                                if (a3 != null) {
                                    j = Long.parseLong(a3);
                                } else {
                                    i3++;
                                }
                            }
                            j = -9223372036854775807L;
                            while (true) {
                                if (i < 2) {
                                    String a4 = XmlPullParserUtil.a(newPullParser, c[i]);
                                    if (a4 != null) {
                                        r = ImmutableList.u(new MotionPhotoDescription.ContainerItem(0L, 0L, "image/jpeg"), new MotionPhotoDescription.ContainerItem(Long.parseLong(a4), 0L, "video/mp4"));
                                        break;
                                    }
                                    i++;
                                } else {
                                    r = ImmutableList.r();
                                    break;
                                }
                            }
                        } else {
                            i2++;
                        }
                    }
                } else if (XmlPullParserUtil.c(newPullParser, "Container:Directory")) {
                    r = b(newPullParser, "Container", "Item");
                } else if (XmlPullParserUtil.c(newPullParser, "GContainer:Directory")) {
                    r = b(newPullParser, "GContainer", "GContainerItem");
                }
                if (XmlPullParserUtil.b(newPullParser, "x:xmpmeta")) {
                    if (!r.isEmpty()) {
                        return new MotionPhotoDescription(j, r);
                    }
                }
            }
            return null;
        }
        throw ParserException.a(null, "Couldn't find xmp metadata");
    }

    public static ImmutableList b(XmlPullParser xmlPullParser, String str, String str2) {
        long j;
        ImmutableList.Builder k = ImmutableList.k();
        String concat = str.concat(":Item");
        String concat2 = str.concat(":Directory");
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.c(xmlPullParser, concat)) {
                String concat3 = str2.concat(":Mime");
                String concat4 = str2.concat(":Semantic");
                String concat5 = str2.concat(":Length");
                String concat6 = str2.concat(":Padding");
                String a2 = XmlPullParserUtil.a(xmlPullParser, concat3);
                String a3 = XmlPullParserUtil.a(xmlPullParser, concat4);
                String a4 = XmlPullParserUtil.a(xmlPullParser, concat5);
                String a5 = XmlPullParserUtil.a(xmlPullParser, concat6);
                if (a2 != null && a3 != null) {
                    long j2 = 0;
                    if (a4 != null) {
                        j = Long.parseLong(a4);
                    } else {
                        j = 0;
                    }
                    if (a5 != null) {
                        j2 = Long.parseLong(a5);
                    }
                    k.d(new MotionPhotoDescription.ContainerItem(j, j2, a2));
                } else {
                    return ImmutableList.r();
                }
            }
        } while (!XmlPullParserUtil.b(xmlPullParser, concat2));
        return k.i();
    }
}
