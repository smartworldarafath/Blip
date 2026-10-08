package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.BrushKt$ShaderBrush$1;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathParser;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.graphics.vector.compat.AndroidVectorParser;
import androidx.compose.ui.graphics.vector.compat.AndroidVectorResources;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.ImageVectorCache;
import androidx.core.content.res.ColorStateListInflaterCompat;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.TypedArrayUtils;
import defpackage.u2;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.EmptyList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class VectorResources_androidKt {
    /* JADX WARN: Removed duplicated region for block: B:107:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0370 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0397 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ImageVectorCache.ImageVectorEntry a(Resources.Theme theme, Resources resources, XmlResourceParser xmlResourceParser, int i) {
        TypedArray obtainStyledAttributes;
        boolean z;
        long j;
        int i2;
        int i3;
        int eventType;
        int i4;
        TypedArray obtainStyledAttributes2;
        String str;
        int i5;
        TypedArray obtainStyledAttributes3;
        String str2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        Shader shader;
        Brush solidColor;
        Shader shader2;
        Brush solidColor2;
        int i11;
        TypedArray obtainStyledAttributes4;
        String str3;
        int i12;
        ColorStateList colorStateList;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        AndroidVectorParser androidVectorParser = new AndroidVectorParser(xmlResourceParser);
        int[] iArr = AndroidVectorResources.a;
        if (theme == null) {
            obtainStyledAttributes = resources.obtainAttributes(asAttributeSet, iArr);
        } else {
            obtainStyledAttributes = theme.obtainStyledAttributes(asAttributeSet, iArr, 0, 0);
        }
        TypedArray typedArray = obtainStyledAttributes;
        androidVectorParser.c(typedArray.getChangingConfigurations());
        if (!TypedArrayUtils.a(xmlResourceParser, "autoMirrored")) {
            z = false;
        } else {
            z = typedArray.getBoolean(5, false);
        }
        androidVectorParser.c(typedArray.getChangingConfigurations());
        float b = androidVectorParser.b(typedArray, "viewportWidth", 7, 0.0f);
        float b2 = androidVectorParser.b(typedArray, "viewportHeight", 8, 0.0f);
        if (b > 0.0f) {
            if (b2 > 0.0f) {
                float dimension = typedArray.getDimension(3, 0.0f);
                androidVectorParser.c(typedArray.getChangingConfigurations());
                int i13 = 2;
                float dimension2 = typedArray.getDimension(2, 0.0f);
                androidVectorParser.c(typedArray.getChangingConfigurations());
                if (typedArray.hasValue(1)) {
                    TypedValue typedValue = new TypedValue();
                    typedArray.getValue(1, typedValue);
                    if (typedValue.type == 2) {
                        j = Color.h;
                    } else {
                        if (xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "tint") != null) {
                            TypedValue typedValue2 = new TypedValue();
                            typedArray.getValue(1, typedValue2);
                            int i14 = typedValue2.type;
                            if (i14 != 2) {
                                if (i14 >= 28 && i14 <= 31) {
                                    colorStateList = ColorStateList.valueOf(typedValue2.data);
                                } else {
                                    Resources resources2 = typedArray.getResources();
                                    int resourceId = typedArray.getResourceId(1, 0);
                                    ThreadLocal threadLocal = ColorStateListInflaterCompat.a;
                                    try {
                                        colorStateList = ColorStateListInflaterCompat.a(resources2, resources2.getXml(resourceId), theme);
                                    } catch (Exception e) {
                                        Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
                                    }
                                }
                                androidVectorParser.c(typedArray.getChangingConfigurations());
                                if (colorStateList == null) {
                                    j = ColorKt.b(colorStateList.getDefaultColor());
                                } else {
                                    j = Color.h;
                                }
                            } else {
                                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue2);
                            }
                        }
                        colorStateList = null;
                        androidVectorParser.c(typedArray.getChangingConfigurations());
                        if (colorStateList == null) {
                        }
                    }
                } else {
                    j = Color.h;
                }
                int i15 = typedArray.getInt(6, -1);
                androidVectorParser.c(typedArray.getChangingConfigurations());
                if (i15 != -1) {
                    if (i15 != 3) {
                        if (i15 != 5) {
                            if (i15 != 9) {
                                switch (i15) {
                                    case 14:
                                        i2 = 13;
                                        break;
                                    case 15:
                                        i2 = 14;
                                        break;
                                    case 16:
                                        i2 = 12;
                                        break;
                                }
                            } else {
                                i2 = 9;
                            }
                        }
                    } else {
                        i2 = 3;
                    }
                    float f = dimension / resources.getDisplayMetrics().density;
                    float f2 = dimension2 / resources.getDisplayMetrics().density;
                    typedArray.recycle();
                    String str4 = "http://schemas.android.com/apk/res/android";
                    i3 = 3;
                    ImageVector.Builder builder = new ImageVector.Builder(null, f, f2, b, b2, j, i2, z, 1);
                    int i16 = 0;
                    while (xmlResourceParser.getEventType() != 1 && (xmlResourceParser.getDepth() >= 1 || xmlResourceParser.getEventType() != i3)) {
                        XmlPullParser xmlPullParser = androidVectorParser.a;
                        eventType = xmlPullParser.getEventType();
                        if (eventType == i13) {
                            if (eventType == i3 && "group".equals(xmlPullParser.getName())) {
                                int i17 = i16 + 1;
                                for (int i18 = 0; i18 < i17; i18++) {
                                    builder.e();
                                }
                                int[] iArr2 = androidVectorParser.c;
                                if (iArr2 != null && (i12 = androidVectorParser.d) != 0) {
                                    int i19 = i12 - 1;
                                    androidVectorParser.d = i19;
                                    i16 = iArr2[i19];
                                } else {
                                    i16 = 0;
                                }
                            }
                        } else {
                            String name = xmlPullParser.getName();
                            if (name != null) {
                                int hashCode = name.hashCode();
                                List list = EmptyList.j;
                                PathParser pathParser = androidVectorParser.e;
                                if (hashCode != -1649314686) {
                                    if (hashCode != 3433509) {
                                        if (hashCode == 98629247 && name.equals("group")) {
                                            int[] iArr3 = AndroidVectorResources.b;
                                            if (theme == null) {
                                                obtainStyledAttributes4 = resources.obtainAttributes(asAttributeSet, iArr3);
                                            } else {
                                                obtainStyledAttributes4 = theme.obtainStyledAttributes(asAttributeSet, iArr3, 0, 0);
                                            }
                                            androidVectorParser.c(obtainStyledAttributes4.getChangingConfigurations());
                                            float b3 = androidVectorParser.b(obtainStyledAttributes4, "rotation", 5, 0.0f);
                                            float f3 = obtainStyledAttributes4.getFloat(1, 0.0f);
                                            androidVectorParser.c(obtainStyledAttributes4.getChangingConfigurations());
                                            float f4 = obtainStyledAttributes4.getFloat(i13, 0.0f);
                                            androidVectorParser.c(obtainStyledAttributes4.getChangingConfigurations());
                                            float b4 = androidVectorParser.b(obtainStyledAttributes4, "scaleX", 3, 1.0f);
                                            float b5 = androidVectorParser.b(obtainStyledAttributes4, "scaleY", 4, 1.0f);
                                            float b6 = androidVectorParser.b(obtainStyledAttributes4, "translateX", 6, 0.0f);
                                            float b7 = androidVectorParser.b(obtainStyledAttributes4, "translateY", 7, 0.0f);
                                            String string = obtainStyledAttributes4.getString(0);
                                            androidVectorParser.c(obtainStyledAttributes4.getChangingConfigurations());
                                            if (string == null) {
                                                str3 = "";
                                            } else {
                                                str3 = string;
                                            }
                                            obtainStyledAttributes4.recycle();
                                            int i20 = VectorKt.a;
                                            builder.a(str3, b3, f3, f4, b4, b5, b6, b7, list);
                                            int[] iArr4 = androidVectorParser.c;
                                            if (iArr4 == null) {
                                                iArr4 = new int[4];
                                                androidVectorParser.c = iArr4;
                                            } else if (androidVectorParser.d >= iArr4.length) {
                                                iArr4 = Arrays.copyOf(iArr4, iArr4.length * i13);
                                                androidVectorParser.c = iArr4;
                                            }
                                            int i21 = androidVectorParser.d;
                                            androidVectorParser.d = i21 + 1;
                                            iArr4[i21] = i16;
                                            i16 = 0;
                                        }
                                    } else if (name.equals("path")) {
                                        int[] iArr5 = AndroidVectorResources.c;
                                        if (theme == null) {
                                            obtainStyledAttributes3 = resources.obtainAttributes(asAttributeSet, iArr5);
                                            i5 = 0;
                                        } else {
                                            i5 = 0;
                                            obtainStyledAttributes3 = theme.obtainStyledAttributes(asAttributeSet, iArr5, 0, 0);
                                        }
                                        androidVectorParser.c(obtainStyledAttributes3.getChangingConfigurations());
                                        String str5 = str4;
                                        if (xmlPullParser.getAttributeValue(str5, "pathData") != null) {
                                            String string2 = obtainStyledAttributes3.getString(i5);
                                            androidVectorParser.c(obtainStyledAttributes3.getChangingConfigurations());
                                            if (string2 == null) {
                                                str2 = "";
                                            } else {
                                                str2 = string2;
                                            }
                                            String string3 = obtainStyledAttributes3.getString(i13);
                                            androidVectorParser.c(obtainStyledAttributes3.getChangingConfigurations());
                                            if (string3 == null) {
                                                int i22 = VectorKt.a;
                                            } else {
                                                list = PathParser.a(pathParser, string3);
                                            }
                                            List list2 = list;
                                            ComplexColorCompat a = androidVectorParser.a(obtainStyledAttributes3, theme, "fillColor", 1);
                                            float b8 = androidVectorParser.b(obtainStyledAttributes3, "fillAlpha", 12, 1.0f);
                                            if (!TypedArrayUtils.a(xmlPullParser, "strokeLineCap")) {
                                                i6 = -1;
                                            } else {
                                                i6 = obtainStyledAttributes3.getInt(8, -1);
                                            }
                                            androidVectorParser.c(obtainStyledAttributes3.getChangingConfigurations());
                                            if (i6 != 0) {
                                                if (i6 != 1) {
                                                    if (i6 == i13) {
                                                        i7 = i13;
                                                    }
                                                } else {
                                                    i7 = 1;
                                                }
                                                if (TypedArrayUtils.a(xmlPullParser, "strokeLineJoin")) {
                                                    i8 = -1;
                                                } else {
                                                    i8 = obtainStyledAttributes3.getInt(9, -1);
                                                }
                                                androidVectorParser.c(obtainStyledAttributes3.getChangingConfigurations());
                                                if (i8 != 0) {
                                                    if (i8 != 1) {
                                                        if (i8 == i13) {
                                                            i9 = i13;
                                                        }
                                                    } else {
                                                        i9 = 1;
                                                    }
                                                    float b9 = androidVectorParser.b(obtainStyledAttributes3, "strokeMiterLimit", 10, 4.0f);
                                                    ComplexColorCompat a2 = androidVectorParser.a(obtainStyledAttributes3, theme, "strokeColor", 3);
                                                    float b10 = androidVectorParser.b(obtainStyledAttributes3, "strokeAlpha", 11, 1.0f);
                                                    float b11 = androidVectorParser.b(obtainStyledAttributes3, "strokeWidth", 4, 1.0f);
                                                    float b12 = androidVectorParser.b(obtainStyledAttributes3, "trimPathEnd", 6, 1.0f);
                                                    float b13 = androidVectorParser.b(obtainStyledAttributes3, "trimPathOffset", 7, 0.0f);
                                                    float b14 = androidVectorParser.b(obtainStyledAttributes3, "trimPathStart", 5, 0.0f);
                                                    if (!TypedArrayUtils.a(xmlPullParser, "fillType")) {
                                                        i10 = 0;
                                                    } else {
                                                        i10 = obtainStyledAttributes3.getInt(13, 0);
                                                    }
                                                    androidVectorParser.c(obtainStyledAttributes3.getChangingConfigurations());
                                                    obtainStyledAttributes3.recycle();
                                                    shader = a.a;
                                                    int i23 = a.b;
                                                    if (shader != null || i23 != 0) {
                                                        if (shader != null) {
                                                            solidColor = new BrushKt$ShaderBrush$1(shader);
                                                            str4 = str5;
                                                        } else {
                                                            str4 = str5;
                                                            solidColor = new SolidColor(ColorKt.b(i23));
                                                        }
                                                    } else {
                                                        str4 = str5;
                                                        solidColor = null;
                                                    }
                                                    shader2 = a2.a;
                                                    int i24 = a2.b;
                                                    if (shader2 != null || i24 != 0) {
                                                        if (shader2 == null) {
                                                            solidColor2 = new BrushKt$ShaderBrush$1(shader2);
                                                        } else {
                                                            solidColor2 = new SolidColor(ColorKt.b(i24));
                                                        }
                                                    } else {
                                                        solidColor2 = null;
                                                    }
                                                    if (i10 == 0) {
                                                        i11 = 0;
                                                    } else {
                                                        i11 = 1;
                                                    }
                                                    builder.b(b8, b10, b11, b9, b14, b12, b13, i11, i7, i9, solidColor, solidColor2, str2, list2);
                                                }
                                                i9 = 0;
                                                float b92 = androidVectorParser.b(obtainStyledAttributes3, "strokeMiterLimit", 10, 4.0f);
                                                ComplexColorCompat a22 = androidVectorParser.a(obtainStyledAttributes3, theme, "strokeColor", 3);
                                                float b102 = androidVectorParser.b(obtainStyledAttributes3, "strokeAlpha", 11, 1.0f);
                                                float b112 = androidVectorParser.b(obtainStyledAttributes3, "strokeWidth", 4, 1.0f);
                                                float b122 = androidVectorParser.b(obtainStyledAttributes3, "trimPathEnd", 6, 1.0f);
                                                float b132 = androidVectorParser.b(obtainStyledAttributes3, "trimPathOffset", 7, 0.0f);
                                                float b142 = androidVectorParser.b(obtainStyledAttributes3, "trimPathStart", 5, 0.0f);
                                                if (!TypedArrayUtils.a(xmlPullParser, "fillType")) {
                                                }
                                                androidVectorParser.c(obtainStyledAttributes3.getChangingConfigurations());
                                                obtainStyledAttributes3.recycle();
                                                shader = a.a;
                                                int i232 = a.b;
                                                if (shader != null) {
                                                    str4 = str5;
                                                    solidColor = null;
                                                    shader2 = a22.a;
                                                    int i242 = a22.b;
                                                    if (shader2 != null) {
                                                        solidColor2 = null;
                                                        if (i10 == 0) {
                                                        }
                                                        builder.b(b8, b102, b112, b92, b142, b122, b132, i11, i7, i9, solidColor, solidColor2, str2, list2);
                                                    }
                                                    if (shader2 == null) {
                                                    }
                                                    if (i10 == 0) {
                                                    }
                                                    builder.b(b8, b102, b112, b92, b142, b122, b132, i11, i7, i9, solidColor, solidColor2, str2, list2);
                                                }
                                                if (shader != null) {
                                                }
                                                shader2 = a22.a;
                                                int i2422 = a22.b;
                                                if (shader2 != null) {
                                                }
                                                if (shader2 == null) {
                                                }
                                                if (i10 == 0) {
                                                }
                                                builder.b(b8, b102, b112, b92, b142, b122, b132, i11, i7, i9, solidColor, solidColor2, str2, list2);
                                            }
                                            i7 = 0;
                                            if (TypedArrayUtils.a(xmlPullParser, "strokeLineJoin")) {
                                            }
                                            androidVectorParser.c(obtainStyledAttributes3.getChangingConfigurations());
                                            if (i8 != 0) {
                                            }
                                            i9 = 0;
                                            float b922 = androidVectorParser.b(obtainStyledAttributes3, "strokeMiterLimit", 10, 4.0f);
                                            ComplexColorCompat a222 = androidVectorParser.a(obtainStyledAttributes3, theme, "strokeColor", 3);
                                            float b1022 = androidVectorParser.b(obtainStyledAttributes3, "strokeAlpha", 11, 1.0f);
                                            float b1122 = androidVectorParser.b(obtainStyledAttributes3, "strokeWidth", 4, 1.0f);
                                            float b1222 = androidVectorParser.b(obtainStyledAttributes3, "trimPathEnd", 6, 1.0f);
                                            float b1322 = androidVectorParser.b(obtainStyledAttributes3, "trimPathOffset", 7, 0.0f);
                                            float b1422 = androidVectorParser.b(obtainStyledAttributes3, "trimPathStart", 5, 0.0f);
                                            if (!TypedArrayUtils.a(xmlPullParser, "fillType")) {
                                            }
                                            androidVectorParser.c(obtainStyledAttributes3.getChangingConfigurations());
                                            obtainStyledAttributes3.recycle();
                                            shader = a.a;
                                            int i2322 = a.b;
                                            if (shader != null) {
                                            }
                                            if (shader != null) {
                                            }
                                            shader2 = a222.a;
                                            int i24222 = a222.b;
                                            if (shader2 != null) {
                                            }
                                            if (shader2 == null) {
                                            }
                                            if (i10 == 0) {
                                            }
                                            builder.b(b8, b1022, b1122, b922, b1422, b1222, b1322, i11, i7, i9, solidColor, solidColor2, str2, list2);
                                        } else {
                                            u2.g("No path data available");
                                            return null;
                                        }
                                    }
                                } else if (name.equals("clip-path")) {
                                    int[] iArr6 = AndroidVectorResources.d;
                                    if (theme == null) {
                                        obtainStyledAttributes2 = resources.obtainAttributes(asAttributeSet, iArr6);
                                        i4 = 0;
                                    } else {
                                        i4 = 0;
                                        obtainStyledAttributes2 = theme.obtainStyledAttributes(asAttributeSet, iArr6, 0, 0);
                                    }
                                    androidVectorParser.c(obtainStyledAttributes2.getChangingConfigurations());
                                    String string4 = obtainStyledAttributes2.getString(i4);
                                    androidVectorParser.c(obtainStyledAttributes2.getChangingConfigurations());
                                    if (string4 == null) {
                                        str = "";
                                    } else {
                                        str = string4;
                                    }
                                    String string5 = obtainStyledAttributes2.getString(1);
                                    androidVectorParser.c(obtainStyledAttributes2.getChangingConfigurations());
                                    if (string5 == null) {
                                        int i25 = VectorKt.a;
                                    } else {
                                        list = PathParser.a(pathParser, string5);
                                    }
                                    obtainStyledAttributes2.recycle();
                                    builder.a(str, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, list);
                                    i16++;
                                }
                                xmlResourceParser.next();
                                i3 = 3;
                                i13 = 2;
                            }
                        }
                        xmlResourceParser.next();
                        i3 = 3;
                        i13 = 2;
                    }
                    return new ImageVectorCache.ImageVectorEntry(builder.d(), i | androidVectorParser.b);
                }
                i2 = 5;
                float f5 = dimension / resources.getDisplayMetrics().density;
                float f22 = dimension2 / resources.getDisplayMetrics().density;
                typedArray.recycle();
                String str42 = "http://schemas.android.com/apk/res/android";
                i3 = 3;
                ImageVector.Builder builder2 = new ImageVector.Builder(null, f5, f22, b, b2, j, i2, z, 1);
                int i162 = 0;
                while (xmlResourceParser.getEventType() != 1) {
                    XmlPullParser xmlPullParser2 = androidVectorParser.a;
                    eventType = xmlPullParser2.getEventType();
                    if (eventType == i13) {
                    }
                    xmlResourceParser.next();
                    i3 = 3;
                    i13 = 2;
                }
                return new ImageVectorCache.ImageVectorEntry(builder2.d(), i | androidVectorParser.b);
            }
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<VectorGraphic> tag requires viewportHeight > 0");
        }
        throw new XmlPullParserException(typedArray.getPositionDescription() + "<VectorGraphic> tag requires viewportWidth > 0");
    }

    public static final ImageVector b(int i, GapComposer gapComposer) {
        Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
        Resources resources = (Resources) gapComposer.j(AndroidCompositionLocals_androidKt.c);
        Resources.Theme theme = context.getTheme();
        Object configuration = resources.getConfiguration();
        boolean f = gapComposer.f(configuration) | gapComposer.d(i) | gapComposer.f(resources) | gapComposer.f(theme);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            TypedValue typedValue = new TypedValue();
            resources.getValue(i, typedValue, true);
            XmlResourceParser xml = resources.getXml(i);
            int next = xml.next();
            while (next != 2 && next != 1) {
                next = xml.next();
            }
            if (next == 2) {
                K = a(theme, resources, xml, typedValue.changingConfigurations).a;
                gapComposer.g0(K);
            } else {
                throw new XmlPullParserException("No start tag found");
            }
        }
        return (ImageVector) K;
    }
}
