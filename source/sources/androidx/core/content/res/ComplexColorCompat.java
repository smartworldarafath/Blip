package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.core.R$styleable;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComplexColorCompat {
    public final Shader a;
    public final int b;

    public ComplexColorCompat(Shader shader, int i) {
        this.a = shader;
        this.b = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x01e2, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r2.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ComplexColorCompat a(Resources resources, int i, Resources.Theme theme) {
        int next;
        TypedArray obtainStyledAttributes;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int i2;
        int i3;
        boolean z;
        int i4;
        int i5;
        int i6;
        int i7;
        float f7;
        float f8;
        float f9;
        GradientColorInflaterCompat$ColorStops gradientColorInflaterCompat$ColorStops;
        Shader.TileMode tileMode;
        Shader radialGradient;
        Shader.TileMode tileMode2;
        int i8;
        TypedArray obtainStyledAttributes2;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            name.getClass();
            if (!name.equals("gradient")) {
                if (name.equals("selector")) {
                    return new ComplexColorCompat(null, ColorStateListInflaterCompat.b(resources, xml, asAttributeSet, theme).getDefaultColor());
                }
                throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
            }
            String name2 = xml.getName();
            if (name2.equals("gradient")) {
                int[] iArr = R$styleable.e;
                if (theme == null) {
                    obtainStyledAttributes = resources.obtainAttributes(asAttributeSet, iArr);
                } else {
                    obtainStyledAttributes = theme.obtainStyledAttributes(asAttributeSet, iArr, 0, 0);
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "startX") != null) {
                    f = obtainStyledAttributes.getFloat(8, 0.0f);
                } else {
                    f = 0.0f;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "startY") != null) {
                    f2 = obtainStyledAttributes.getFloat(9, 0.0f);
                } else {
                    f2 = 0.0f;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "endX") != null) {
                    f3 = obtainStyledAttributes.getFloat(10, 0.0f);
                } else {
                    f3 = 0.0f;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "endY") != null) {
                    f4 = obtainStyledAttributes.getFloat(11, 0.0f);
                } else {
                    f4 = 0.0f;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerX") != null) {
                    f5 = obtainStyledAttributes.getFloat(3, 0.0f);
                } else {
                    f5 = 0.0f;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerY") != null) {
                    f6 = obtainStyledAttributes.getFloat(4, 0.0f);
                } else {
                    f6 = 0.0f;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "type") != null) {
                    i2 = obtainStyledAttributes.getInt(2, 0);
                } else {
                    i2 = 0;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "startColor") != null) {
                    i3 = obtainStyledAttributes.getColor(0, 0);
                } else {
                    i3 = 0;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerColor") != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerColor") != null) {
                    i4 = obtainStyledAttributes.getColor(7, 0);
                } else {
                    i4 = 0;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "endColor") != null) {
                    i5 = 0;
                    i6 = obtainStyledAttributes.getColor(1, 0);
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                int i9 = 1;
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "tileMode") != null) {
                    i7 = obtainStyledAttributes.getInt(6, i5);
                } else {
                    i7 = 0;
                }
                if (xml.getAttributeValue("http://schemas.android.com/apk/res/android", "gradientRadius") != null) {
                    f7 = obtainStyledAttributes.getFloat(5, 0.0f);
                } else {
                    f7 = 0.0f;
                }
                obtainStyledAttributes.recycle();
                int depth = xml.getDepth() + 1;
                ArrayList arrayList = new ArrayList(20);
                float f10 = f7;
                ArrayList arrayList2 = new ArrayList(20);
                while (true) {
                    int next2 = xml.next();
                    f8 = f;
                    if (next2 != i9) {
                        int depth2 = xml.getDepth();
                        f9 = f2;
                        if (depth2 < depth && next2 == 3) {
                            break;
                        }
                        if (next2 == 2 && depth2 <= depth && xml.getName().equals("item")) {
                            int[] iArr2 = R$styleable.f;
                            if (theme == null) {
                                obtainStyledAttributes2 = resources.obtainAttributes(asAttributeSet, iArr2);
                                i8 = 0;
                            } else {
                                i8 = 0;
                                obtainStyledAttributes2 = theme.obtainStyledAttributes(asAttributeSet, iArr2, 0, 0);
                            }
                            boolean hasValue = obtainStyledAttributes2.hasValue(i8);
                            boolean hasValue2 = obtainStyledAttributes2.hasValue(1);
                            if (!hasValue || !hasValue2) {
                                break;
                            }
                            int color = obtainStyledAttributes2.getColor(0, 0);
                            float f11 = obtainStyledAttributes2.getFloat(1, 0.0f);
                            obtainStyledAttributes2.recycle();
                            arrayList2.add(Integer.valueOf(color));
                            arrayList.add(Float.valueOf(f11));
                        }
                        f = f8;
                        f2 = f9;
                        i9 = 1;
                    } else {
                        f9 = f2;
                        break;
                    }
                }
                if (arrayList2.size() > 0) {
                    gradientColorInflaterCompat$ColorStops = new GradientColorInflaterCompat$ColorStops(arrayList2, arrayList);
                } else {
                    gradientColorInflaterCompat$ColorStops = null;
                }
                if (gradientColorInflaterCompat$ColorStops == null) {
                    if (z) {
                        gradientColorInflaterCompat$ColorStops = new GradientColorInflaterCompat$ColorStops(i3, i4, i6);
                    } else {
                        gradientColorInflaterCompat$ColorStops = new GradientColorInflaterCompat$ColorStops(i3, i6);
                    }
                }
                if (i2 != 1) {
                    if (i2 != 2) {
                        int[] iArr3 = gradientColorInflaterCompat$ColorStops.a;
                        float[] fArr = gradientColorInflaterCompat$ColorStops.b;
                        if (i7 != 1) {
                            if (i7 != 2) {
                                tileMode2 = Shader.TileMode.CLAMP;
                            } else {
                                tileMode2 = Shader.TileMode.MIRROR;
                            }
                        } else {
                            tileMode2 = Shader.TileMode.REPEAT;
                        }
                        radialGradient = new LinearGradient(f8, f9, f3, f4, iArr3, fArr, tileMode2);
                    } else {
                        radialGradient = new SweepGradient(f5, f6, gradientColorInflaterCompat$ColorStops.a, gradientColorInflaterCompat$ColorStops.b);
                    }
                } else if (f10 > 0.0f) {
                    int[] iArr4 = gradientColorInflaterCompat$ColorStops.a;
                    float[] fArr2 = gradientColorInflaterCompat$ColorStops.b;
                    if (i7 != 1) {
                        if (i7 != 2) {
                            tileMode = Shader.TileMode.CLAMP;
                        } else {
                            tileMode = Shader.TileMode.MIRROR;
                        }
                    } else {
                        tileMode = Shader.TileMode.REPEAT;
                    }
                    radialGradient = new RadialGradient(f5, f6, f10, iArr4, fArr2, tileMode);
                } else {
                    throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
                }
                return new ComplexColorCompat(radialGradient, 0);
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": invalid gradient color tag " + name2);
        }
        throw new XmlPullParserException("No start tag found");
    }
}
