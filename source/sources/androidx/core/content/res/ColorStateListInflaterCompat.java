package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.R$styleable;
import java.lang.reflect.Array;
import net.blip.android.R;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ColorStateListInflaterCompat {
    public static final ThreadLocal a = new ThreadLocal();

    public static ColorStateList a(Resources resources, XmlResourceParser xmlResourceParser, Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(resources, xmlResourceParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0139  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.lang.Object[], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v5, types: [android.content.res.TypedArray] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ColorStateList b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth;
        ?? r9;
        int color;
        float f;
        float f2;
        int attributeCount;
        int i;
        char c;
        int alpha;
        int i2;
        int[] iArr;
        int i3;
        int a2;
        float min;
        float f3;
        int i4;
        float cbrt;
        int i5;
        int i6;
        TypedValue typedValue;
        ?? r0 = resources;
        AttributeSet attributeSet2 = attributeSet;
        Resources.Theme theme2 = theme;
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            boolean z = 1;
            int depth2 = xmlPullParser.getDepth() + 1;
            int[][] iArr2 = new int[20];
            int[] iArr3 = new int[20];
            int i7 = 0;
            int i8 = 0;
            while (true) {
                int next = xmlPullParser.next();
                if (next == z || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                    break;
                }
                if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                    int[] iArr4 = R$styleable.a;
                    if (theme2 == null) {
                        r9 = r0.obtainAttributes(attributeSet2, iArr4);
                    } else {
                        r9 = theme2.obtainStyledAttributes(attributeSet2, iArr4, i7, i7);
                    }
                    int resourceId = r9.getResourceId(i7, -1);
                    if (resourceId != -1) {
                        ThreadLocal threadLocal = a;
                        TypedValue typedValue2 = (TypedValue) threadLocal.get();
                        if (typedValue2 == null) {
                            typedValue = new TypedValue();
                            threadLocal.set(typedValue);
                        } else {
                            typedValue = typedValue2;
                        }
                        r0.getValue(resourceId, typedValue, z);
                        int i9 = typedValue.type;
                        if (i9 < 28 || i9 > 31) {
                            try {
                                color = a(r0, r0.getXml(resourceId), theme2).getDefaultColor();
                            } catch (Exception unused) {
                                color = r9.getColor(i7, -65281);
                            }
                            if (!r9.hasValue(z)) {
                                f = r9.getFloat(z, 1.0f);
                            } else if (r9.hasValue(3)) {
                                f = r9.getFloat(3, 1.0f);
                            } else {
                                f = 1.0f;
                            }
                            char c2 = z;
                            if (Build.VERSION.SDK_INT < 31 && r9.hasValue(2)) {
                                f2 = r9.getFloat(2, -1.0f);
                            } else {
                                f2 = r9.getFloat(4, -1.0f);
                            }
                            r9.recycle();
                            attributeCount = attributeSet2.getAttributeCount();
                            int[] iArr5 = new int[attributeCount];
                            i = i7;
                            int i10 = i;
                            while (i < attributeCount) {
                                int attributeNameResource = attributeSet2.getAttributeNameResource(i);
                                if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                                    int i11 = i10 + 1;
                                    if (!attributeSet2.getAttributeBooleanValue(i, false)) {
                                        attributeNameResource = -attributeNameResource;
                                    }
                                    iArr5[i10] = attributeNameResource;
                                    i10 = i11;
                                }
                                i++;
                            }
                            int[] trimStateSet = StateSet.trimStateSet(iArr5, i10);
                            float f4 = 100.0f;
                            if (f2 < 0.0f && f2 <= 100.0f) {
                                c = c2;
                            } else {
                                c = 0;
                            }
                            if (f != 1.0f && c == 0) {
                                iArr = trimStateSet;
                                i3 = depth2;
                            } else {
                                alpha = (int) ((Color.alpha(color) * f) + 0.5f);
                                if (alpha >= 0) {
                                    i2 = 0;
                                } else {
                                    i2 = 255;
                                    if (alpha <= 255) {
                                        i2 = alpha;
                                    }
                                }
                                if (c == 0) {
                                    CamColor a3 = CamColor.a(color);
                                    float f5 = a3.a;
                                    float f6 = a3.b;
                                    ViewingConditions viewingConditions = ViewingConditions.k;
                                    if (f6 < 1.0d || Math.round(f2) <= 0.0d || Math.round(f2) >= 100.0d) {
                                        iArr = trimStateSet;
                                        i3 = depth2;
                                        a2 = CamUtils.a(f2);
                                    } else {
                                        if (f5 < 0.0f) {
                                            min = 0.0f;
                                        } else {
                                            min = Math.min(360.0f, f5);
                                        }
                                        float f7 = 0.0f;
                                        float f8 = f6;
                                        char c3 = c2;
                                        CamColor camColor = null;
                                        while (true) {
                                            if (Math.abs(f7 - f6) >= 0.4f) {
                                                float f9 = 1000.0f;
                                                float f10 = f4;
                                                float f11 = 0.0f;
                                                float f12 = 1000.0f;
                                                CamColor camColor2 = null;
                                                while (true) {
                                                    if (Math.abs(f11 - f10) > 0.01f) {
                                                        f3 = f4;
                                                        float f13 = ((f10 - f11) / 2.0f) + f11;
                                                        iArr = trimStateSet;
                                                        int c4 = CamColor.b(f13, f8, min).c(ViewingConditions.k);
                                                        float b = CamUtils.b(Color.red(c4));
                                                        float b2 = CamUtils.b(Color.green(c4));
                                                        float b3 = CamUtils.b(Color.blue(c4));
                                                        float[] fArr = CamUtils.d[c2];
                                                        float f14 = ((b3 * fArr[2]) + ((b2 * fArr[c2]) + (b * fArr[0]))) / f3;
                                                        if (f14 <= 0.008856452f) {
                                                            cbrt = f14 * 903.2963f;
                                                            i4 = c4;
                                                        } else {
                                                            i4 = c4;
                                                            cbrt = (((float) Math.cbrt(f14)) * 116.0f) - 16.0f;
                                                        }
                                                        float abs = Math.abs(f2 - cbrt);
                                                        if (abs < 0.2f) {
                                                            CamColor a4 = CamColor.a(i4);
                                                            CamColor b4 = CamColor.b(a4.c, a4.b, min);
                                                            float f15 = a4.d - b4.d;
                                                            float f16 = a4.e - b4.e;
                                                            float f17 = a4.f - b4.f;
                                                            i3 = depth2;
                                                            float pow = (float) (Math.pow(Math.sqrt((f17 * f17) + (f16 * f16) + (f15 * f15)), 0.63d) * 1.41d);
                                                            if (pow <= 1.0f) {
                                                                f12 = pow;
                                                                f9 = abs;
                                                                camColor2 = a4;
                                                            }
                                                        } else {
                                                            i3 = depth2;
                                                        }
                                                        if (f9 == 0.0f && f12 == 0.0f) {
                                                            break;
                                                        }
                                                        if (cbrt < f2) {
                                                            f11 = f13;
                                                        } else {
                                                            f10 = f13;
                                                        }
                                                        f4 = f3;
                                                        trimStateSet = iArr;
                                                        depth2 = i3;
                                                    } else {
                                                        iArr = trimStateSet;
                                                        i3 = depth2;
                                                        f3 = f4;
                                                        break;
                                                    }
                                                }
                                                CamColor camColor3 = camColor2;
                                                if (c3 != 0) {
                                                    if (camColor3 != null) {
                                                        a2 = camColor3.c(viewingConditions);
                                                        break;
                                                    }
                                                    f8 = ((f6 - f7) / 2.0f) + f7;
                                                    f4 = f3;
                                                    trimStateSet = iArr;
                                                    depth2 = i3;
                                                    c3 = 0;
                                                } else {
                                                    if (camColor3 == null) {
                                                        f6 = f8;
                                                    } else {
                                                        camColor = camColor3;
                                                        f7 = f8;
                                                    }
                                                    f8 = ((f6 - f7) / 2.0f) + f7;
                                                    f4 = f3;
                                                    trimStateSet = iArr;
                                                    depth2 = i3;
                                                }
                                            } else {
                                                iArr = trimStateSet;
                                                i3 = depth2;
                                                if (camColor == null) {
                                                    a2 = CamUtils.a(f2);
                                                } else {
                                                    a2 = camColor.c(viewingConditions);
                                                }
                                            }
                                        }
                                    }
                                    color = a2;
                                } else {
                                    iArr = trimStateSet;
                                    i3 = depth2;
                                }
                                color = (16777215 & color) | (i2 << 24);
                            }
                            i5 = i8 + 1;
                            int i12 = 8;
                            if (i5 > iArr3.length) {
                                if (i8 <= 4) {
                                    i6 = 8;
                                } else {
                                    i6 = i8 * 2;
                                }
                                int[] iArr6 = new int[i6];
                                System.arraycopy(iArr3, 0, iArr6, 0, i8);
                                iArr3 = iArr6;
                            }
                            iArr3[i8] = color;
                            if (i5 > iArr2.length) {
                                Class<?> componentType = iArr2.getClass().getComponentType();
                                if (i8 > 4) {
                                    i12 = i8 * 2;
                                }
                                ?? r1 = (Object[]) Array.newInstance(componentType, i12);
                                System.arraycopy(iArr2, 0, r1, 0, i8);
                                iArr2 = r1;
                            }
                            iArr2[i8] = iArr;
                            iArr2 = iArr2;
                            attributeSet2 = attributeSet;
                            theme2 = theme;
                            i8 = i5;
                            z = c2;
                            depth2 = i3;
                            i7 = 0;
                            r0 = resources;
                        }
                    }
                    color = r9.getColor(i7, -65281);
                    if (!r9.hasValue(z)) {
                    }
                    char c22 = z;
                    if (Build.VERSION.SDK_INT < 31) {
                    }
                    f2 = r9.getFloat(4, -1.0f);
                    r9.recycle();
                    attributeCount = attributeSet2.getAttributeCount();
                    int[] iArr52 = new int[attributeCount];
                    i = i7;
                    int i102 = i;
                    while (i < attributeCount) {
                    }
                    int[] trimStateSet2 = StateSet.trimStateSet(iArr52, i102);
                    float f42 = 100.0f;
                    if (f2 < 0.0f) {
                    }
                    c = 0;
                    if (f != 1.0f) {
                    }
                    alpha = (int) ((Color.alpha(color) * f) + 0.5f);
                    if (alpha >= 0) {
                    }
                    if (c == 0) {
                    }
                    color = (16777215 & color) | (i2 << 24);
                    i5 = i8 + 1;
                    int i122 = 8;
                    if (i5 > iArr3.length) {
                    }
                    iArr3[i8] = color;
                    if (i5 > iArr2.length) {
                    }
                    iArr2[i8] = iArr;
                    iArr2 = iArr2;
                    attributeSet2 = attributeSet;
                    theme2 = theme;
                    i8 = i5;
                    z = c22;
                    depth2 = i3;
                    i7 = 0;
                    r0 = resources;
                } else {
                    r0 = resources;
                    attributeSet2 = attributeSet;
                    theme2 = theme;
                    z = z;
                    depth2 = depth2;
                    i7 = 0;
                }
            }
            int[] iArr7 = new int[i8];
            int[][] iArr8 = new int[i8];
            System.arraycopy(iArr3, 0, iArr7, 0, i8);
            System.arraycopy(iArr2, 0, iArr8, 0, i8);
            return new ColorStateList(iArr8, iArr7);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }
}
