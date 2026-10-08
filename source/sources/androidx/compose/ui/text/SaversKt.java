package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.k8;
import defpackage.ke;
import defpackage.le;
import defpackage.wc;
import defpackage.z6;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SaversKt {
    public static final SaverKt$Saver$1 A;
    public static final SaversKt$NonNullValueClassSaver$1 B;
    public static final SaversKt$NonNullValueClassSaver$1 C;
    public static final SaversKt$NonNullValueClassSaver$1 D;
    public static final SaverKt$Saver$1 a;
    public static final SaverKt$Saver$1 b;
    public static final SaverKt$Saver$1 c;
    public static final SaverKt$Saver$1 d;
    public static final SaverKt$Saver$1 e;
    public static final SaverKt$Saver$1 f;
    public static final SaverKt$Saver$1 g;
    public static final SaverKt$Saver$1 h;
    public static final SaverKt$Saver$1 i;
    public static final SaverKt$Saver$1 j;
    public static final SaverKt$Saver$1 k;
    public static final SaverKt$Saver$1 l;
    public static final SaverKt$Saver$1 m;
    public static final SaverKt$Saver$1 n;
    public static final SaverKt$Saver$1 o;
    public static final SaversKt$NonNullValueClassSaver$1 p;
    public static final SaversKt$NonNullValueClassSaver$1 q;
    public static final SaversKt$NonNullValueClassSaver$1 r;
    public static final SaversKt$NonNullValueClassSaver$1 s;
    public static final SaverKt$Saver$1 t;
    public static final SaverKt$Saver$1 u;
    public static final SaversKt$NonNullValueClassSaver$1 v;
    public static final SaversKt$NonNullValueClassSaver$1 w;
    public static final SaversKt$NonNullValueClassSaver$1 x;
    public static final SaverKt$Saver$1 y;
    public static final SaverKt$Saver$1 z;

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, kotlin.jvm.functions.Function2] */
    static {
        int i2 = 21;
        new SaverKt$Saver$1(new z6(i2), new wc(12));
        int i3 = 28;
        int i4 = 23;
        a = new SaverKt$Saver$1(new z6(i3), new wc(i4));
        final int i5 = 1;
        b = new SaverKt$Saver$1(new Object(), new Function1() { // from class: androidx.compose.ui.text.b
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Color color;
                Offset offset;
                Float f2;
                AnnotationType annotationType;
                Integer num;
                Integer num2;
                String str;
                ParagraphStyle paragraphStyle;
                AnnotatedString.Range range;
                SpanStyle spanStyle;
                VerbatimTtsAnnotation verbatimTtsAnnotation;
                UrlAnnotation urlAnnotation;
                LinkAnnotation.Url url;
                LinkAnnotation.Clickable clickable;
                String str2;
                Color color2;
                TextUnit textUnit;
                FontWeight fontWeight;
                FontStyle fontStyle;
                FontSynthesis fontSynthesis;
                String str3;
                TextUnit textUnit2;
                BaselineShift baselineShift;
                TextGeometricTransform textGeometricTransform;
                LocaleList localeList;
                Color color3;
                TextDecoration textDecoration;
                Shadow shadow;
                int i6 = i5;
                SaversKt$ColorSaver$2 saversKt$ColorSaver$2 = SaversKt$ColorSaver$2.j;
                switch (i6) {
                    case 0:
                        SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.a;
                        obj.getClass();
                        List list = (List) obj;
                        Object obj2 = list.get(0);
                        int i7 = Color.i;
                        SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.a;
                        Boolean bool = Boolean.FALSE;
                        Intrinsics.a(obj2, bool);
                        if (obj2 != null) {
                            color = (Color) saversKt$ColorSaver$2.b(obj2);
                        } else {
                            color = null;
                        }
                        color.getClass();
                        long j2 = color.a;
                        Object obj3 = list.get(1);
                        SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.x;
                        Intrinsics.a(obj3, bool);
                        if (obj3 != null) {
                            offset = (Offset) saversKt$NonNullValueClassSaver$1.b.b(obj3);
                        } else {
                            offset = null;
                        }
                        offset.getClass();
                        long j3 = offset.a;
                        Object obj4 = list.get(2);
                        if (obj4 != null) {
                            f2 = (Float) obj4;
                        } else {
                            f2 = null;
                        }
                        f2.getClass();
                        return new Shadow(j2, j3, f2.floatValue());
                    case 1:
                        SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.a;
                        obj.getClass();
                        List list2 = (List) obj;
                        Object obj5 = list2.get(0);
                        if (obj5 != null) {
                            annotationType = (AnnotationType) obj5;
                        } else {
                            annotationType = null;
                        }
                        annotationType.getClass();
                        Object obj6 = list2.get(2);
                        if (obj6 != null) {
                            num = (Integer) obj6;
                        } else {
                            num = null;
                        }
                        num.getClass();
                        int intValue = num.intValue();
                        Object obj7 = list2.get(3);
                        if (obj7 != null) {
                            num2 = (Integer) obj7;
                        } else {
                            num2 = null;
                        }
                        num2.getClass();
                        int intValue2 = num2.intValue();
                        Object obj8 = list2.get(4);
                        if (obj8 != null) {
                            str = (String) obj8;
                        } else {
                            str = null;
                        }
                        str.getClass();
                        switch (annotationType.ordinal()) {
                            case 0:
                                Object obj9 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.g;
                                if ((Intrinsics.a(obj9, Boolean.FALSE) && !(saverKt$Saver$14 instanceof NonNullValueClassSaver)) || obj9 == null) {
                                    paragraphStyle = null;
                                } else {
                                    paragraphStyle = (ParagraphStyle) saverKt$Saver$14.b.b(obj9);
                                }
                                paragraphStyle.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, paragraphStyle, str);
                                break;
                            case 1:
                                Object obj10 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.h;
                                if ((Intrinsics.a(obj10, Boolean.FALSE) && !(saverKt$Saver$15 instanceof NonNullValueClassSaver)) || obj10 == null) {
                                    spanStyle = null;
                                } else {
                                    spanStyle = (SpanStyle) saverKt$Saver$15.b.b(obj10);
                                }
                                spanStyle.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, spanStyle, str);
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                Object obj11 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.c;
                                if ((Intrinsics.a(obj11, Boolean.FALSE) && !(saverKt$Saver$16 instanceof NonNullValueClassSaver)) || obj11 == null) {
                                    verbatimTtsAnnotation = null;
                                } else {
                                    verbatimTtsAnnotation = (VerbatimTtsAnnotation) saverKt$Saver$16.b.b(obj11);
                                }
                                verbatimTtsAnnotation.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, verbatimTtsAnnotation, str);
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                Object obj12 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.d;
                                if ((Intrinsics.a(obj12, Boolean.FALSE) && !(saverKt$Saver$17 instanceof NonNullValueClassSaver)) || obj12 == null) {
                                    urlAnnotation = null;
                                } else {
                                    urlAnnotation = (UrlAnnotation) saverKt$Saver$17.b.b(obj12);
                                }
                                urlAnnotation.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, urlAnnotation, str);
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                Object obj13 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.e;
                                if ((Intrinsics.a(obj13, Boolean.FALSE) && !(saverKt$Saver$18 instanceof NonNullValueClassSaver)) || obj13 == null) {
                                    url = null;
                                } else {
                                    url = (LinkAnnotation.Url) saverKt$Saver$18.b.b(obj13);
                                }
                                url.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, url, str);
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                Object obj14 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.f;
                                if ((Intrinsics.a(obj14, Boolean.FALSE) && !(saverKt$Saver$19 instanceof NonNullValueClassSaver)) || obj14 == null) {
                                    clickable = null;
                                } else {
                                    clickable = (LinkAnnotation.Clickable) saverKt$Saver$19.b.b(obj14);
                                }
                                clickable.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, clickable, str);
                                break;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                Object obj15 = list2.get(1);
                                if (obj15 != null) {
                                    str2 = (String) obj15;
                                } else {
                                    str2 = null;
                                }
                                str2.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, new StringAnnotation(str2), str);
                                break;
                            default:
                                k8.e();
                                return null;
                        }
                        return range;
                    default:
                        SaverKt$Saver$1 saverKt$Saver$110 = SaversKt.a;
                        obj.getClass();
                        List list3 = (List) obj;
                        Object obj16 = list3.get(0);
                        int i8 = Color.i;
                        SaverKt$Saver$1 saverKt$Saver$111 = SaversKt.a;
                        Boolean bool2 = Boolean.FALSE;
                        Intrinsics.a(obj16, bool2);
                        if (obj16 != null) {
                            color2 = (Color) saversKt$ColorSaver$2.b(obj16);
                        } else {
                            color2 = null;
                        }
                        color2.getClass();
                        long j4 = color2.a;
                        Object obj17 = list3.get(1);
                        TextUnitType[] textUnitTypeArr = TextUnit.b;
                        Function1 function1 = SaversKt.v.b;
                        Intrinsics.a(obj17, bool2);
                        if (obj17 != null) {
                            textUnit = (TextUnit) function1.b(obj17);
                        } else {
                            textUnit = null;
                        }
                        textUnit.getClass();
                        long j5 = textUnit.a;
                        Object obj18 = list3.get(2);
                        FontWeight fontWeight2 = FontWeight.k;
                        SaverKt$Saver$1 saverKt$Saver$112 = SaversKt.m;
                        if ((Intrinsics.a(obj18, bool2) && !(saverKt$Saver$112 instanceof NonNullValueClassSaver)) || obj18 == null) {
                            fontWeight = null;
                        } else {
                            fontWeight = (FontWeight) saverKt$Saver$112.b.b(obj18);
                        }
                        Object obj19 = list3.get(3);
                        SaverKt$Saver$1 saverKt$Saver$113 = SaversKt.t;
                        if ((Intrinsics.a(obj19, bool2) && !(saverKt$Saver$113 instanceof NonNullValueClassSaver)) || obj19 == null) {
                            fontStyle = null;
                        } else {
                            fontStyle = (FontStyle) saverKt$Saver$113.b.b(obj19);
                        }
                        Object obj20 = list3.get(4);
                        SaverKt$Saver$1 saverKt$Saver$114 = SaversKt.u;
                        if ((Intrinsics.a(obj20, bool2) && !(saverKt$Saver$114 instanceof NonNullValueClassSaver)) || obj20 == null) {
                            fontSynthesis = null;
                        } else {
                            fontSynthesis = (FontSynthesis) saverKt$Saver$114.b.b(obj20);
                        }
                        Object obj21 = list3.get(6);
                        if (obj21 != null) {
                            str3 = (String) obj21;
                        } else {
                            str3 = null;
                        }
                        Object obj22 = list3.get(7);
                        Intrinsics.a(obj22, bool2);
                        if (obj22 != null) {
                            textUnit2 = (TextUnit) function1.b(obj22);
                        } else {
                            textUnit2 = null;
                        }
                        textUnit2.getClass();
                        long j6 = textUnit2.a;
                        Object obj23 = list3.get(8);
                        SaverKt$Saver$1 saverKt$Saver$115 = SaversKt.n;
                        if ((Intrinsics.a(obj23, bool2) && !(saverKt$Saver$115 instanceof NonNullValueClassSaver)) || obj23 == null) {
                            baselineShift = null;
                        } else {
                            baselineShift = (BaselineShift) saverKt$Saver$115.b.b(obj23);
                        }
                        Object obj24 = list3.get(9);
                        SaverKt$Saver$1 saverKt$Saver$116 = SaversKt.k;
                        if ((Intrinsics.a(obj24, bool2) && !(saverKt$Saver$116 instanceof NonNullValueClassSaver)) || obj24 == null) {
                            textGeometricTransform = null;
                        } else {
                            textGeometricTransform = (TextGeometricTransform) saverKt$Saver$116.b.b(obj24);
                        }
                        Object obj25 = list3.get(10);
                        LocaleList localeList2 = LocaleList.l;
                        SaverKt$Saver$1 saverKt$Saver$117 = SaversKt.y;
                        if ((Intrinsics.a(obj25, bool2) && !(saverKt$Saver$117 instanceof NonNullValueClassSaver)) || obj25 == null) {
                            localeList = null;
                        } else {
                            localeList = (LocaleList) saverKt$Saver$117.b.b(obj25);
                        }
                        Object obj26 = list3.get(11);
                        Intrinsics.a(obj26, bool2);
                        if (obj26 != null) {
                            color3 = (Color) saversKt$ColorSaver$2.b(obj26);
                        } else {
                            color3 = null;
                        }
                        color3.getClass();
                        long j7 = color3.a;
                        Object obj27 = list3.get(12);
                        SaverKt$Saver$1 saverKt$Saver$118 = SaversKt.j;
                        if ((Intrinsics.a(obj27, bool2) && !(saverKt$Saver$118 instanceof NonNullValueClassSaver)) || obj27 == null) {
                            textDecoration = null;
                        } else {
                            textDecoration = (TextDecoration) saverKt$Saver$118.b.b(obj27);
                        }
                        Object obj28 = list3.get(13);
                        Shadow shadow2 = Shadow.d;
                        SaverKt$Saver$1 saverKt$Saver$119 = SaversKt.o;
                        if ((Intrinsics.a(obj28, bool2) && !(saverKt$Saver$119 instanceof NonNullValueClassSaver)) || obj28 == null) {
                            shadow = null;
                        } else {
                            shadow = (Shadow) saverKt$Saver$119.b.b(obj28);
                        }
                        return new SpanStyle(j4, j5, fontWeight, fontStyle, fontSynthesis, (FontFamily) null, str3, j6, baselineShift, textGeometricTransform, localeList, j7, textDecoration, shadow, 49184);
                }
            }
        });
        int i6 = 16;
        int i7 = 6;
        c = new SaverKt$Saver$1(new ke(i6), new le(i7));
        int i8 = 18;
        int i9 = 7;
        d = new SaverKt$Saver$1(new ke(i8), new le(i9));
        int i10 = 26;
        int i11 = 20;
        e = new SaverKt$Saver$1(new z6(i10), new wc(i11));
        f = new SaverKt$Saver$1(new ke(i9), new le(i5));
        int i12 = 17;
        int i13 = 8;
        g = new SaverKt$Saver$1(new ke(i12), new le(i13));
        int i14 = 19;
        final int i15 = 2;
        h = new SaverKt$Saver$1(new ke(i14), new Function1() { // from class: androidx.compose.ui.text.b
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Color color;
                Offset offset;
                Float f2;
                AnnotationType annotationType;
                Integer num;
                Integer num2;
                String str;
                ParagraphStyle paragraphStyle;
                AnnotatedString.Range range;
                SpanStyle spanStyle;
                VerbatimTtsAnnotation verbatimTtsAnnotation;
                UrlAnnotation urlAnnotation;
                LinkAnnotation.Url url;
                LinkAnnotation.Clickable clickable;
                String str2;
                Color color2;
                TextUnit textUnit;
                FontWeight fontWeight;
                FontStyle fontStyle;
                FontSynthesis fontSynthesis;
                String str3;
                TextUnit textUnit2;
                BaselineShift baselineShift;
                TextGeometricTransform textGeometricTransform;
                LocaleList localeList;
                Color color3;
                TextDecoration textDecoration;
                Shadow shadow;
                int i62 = i15;
                SaversKt$ColorSaver$2 saversKt$ColorSaver$2 = SaversKt$ColorSaver$2.j;
                switch (i62) {
                    case 0:
                        SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.a;
                        obj.getClass();
                        List list = (List) obj;
                        Object obj2 = list.get(0);
                        int i72 = Color.i;
                        SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.a;
                        Boolean bool = Boolean.FALSE;
                        Intrinsics.a(obj2, bool);
                        if (obj2 != null) {
                            color = (Color) saversKt$ColorSaver$2.b(obj2);
                        } else {
                            color = null;
                        }
                        color.getClass();
                        long j2 = color.a;
                        Object obj3 = list.get(1);
                        SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.x;
                        Intrinsics.a(obj3, bool);
                        if (obj3 != null) {
                            offset = (Offset) saversKt$NonNullValueClassSaver$1.b.b(obj3);
                        } else {
                            offset = null;
                        }
                        offset.getClass();
                        long j3 = offset.a;
                        Object obj4 = list.get(2);
                        if (obj4 != null) {
                            f2 = (Float) obj4;
                        } else {
                            f2 = null;
                        }
                        f2.getClass();
                        return new Shadow(j2, j3, f2.floatValue());
                    case 1:
                        SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.a;
                        obj.getClass();
                        List list2 = (List) obj;
                        Object obj5 = list2.get(0);
                        if (obj5 != null) {
                            annotationType = (AnnotationType) obj5;
                        } else {
                            annotationType = null;
                        }
                        annotationType.getClass();
                        Object obj6 = list2.get(2);
                        if (obj6 != null) {
                            num = (Integer) obj6;
                        } else {
                            num = null;
                        }
                        num.getClass();
                        int intValue = num.intValue();
                        Object obj7 = list2.get(3);
                        if (obj7 != null) {
                            num2 = (Integer) obj7;
                        } else {
                            num2 = null;
                        }
                        num2.getClass();
                        int intValue2 = num2.intValue();
                        Object obj8 = list2.get(4);
                        if (obj8 != null) {
                            str = (String) obj8;
                        } else {
                            str = null;
                        }
                        str.getClass();
                        switch (annotationType.ordinal()) {
                            case 0:
                                Object obj9 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.g;
                                if ((Intrinsics.a(obj9, Boolean.FALSE) && !(saverKt$Saver$14 instanceof NonNullValueClassSaver)) || obj9 == null) {
                                    paragraphStyle = null;
                                } else {
                                    paragraphStyle = (ParagraphStyle) saverKt$Saver$14.b.b(obj9);
                                }
                                paragraphStyle.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, paragraphStyle, str);
                                break;
                            case 1:
                                Object obj10 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.h;
                                if ((Intrinsics.a(obj10, Boolean.FALSE) && !(saverKt$Saver$15 instanceof NonNullValueClassSaver)) || obj10 == null) {
                                    spanStyle = null;
                                } else {
                                    spanStyle = (SpanStyle) saverKt$Saver$15.b.b(obj10);
                                }
                                spanStyle.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, spanStyle, str);
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                Object obj11 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.c;
                                if ((Intrinsics.a(obj11, Boolean.FALSE) && !(saverKt$Saver$16 instanceof NonNullValueClassSaver)) || obj11 == null) {
                                    verbatimTtsAnnotation = null;
                                } else {
                                    verbatimTtsAnnotation = (VerbatimTtsAnnotation) saverKt$Saver$16.b.b(obj11);
                                }
                                verbatimTtsAnnotation.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, verbatimTtsAnnotation, str);
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                Object obj12 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.d;
                                if ((Intrinsics.a(obj12, Boolean.FALSE) && !(saverKt$Saver$17 instanceof NonNullValueClassSaver)) || obj12 == null) {
                                    urlAnnotation = null;
                                } else {
                                    urlAnnotation = (UrlAnnotation) saverKt$Saver$17.b.b(obj12);
                                }
                                urlAnnotation.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, urlAnnotation, str);
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                Object obj13 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.e;
                                if ((Intrinsics.a(obj13, Boolean.FALSE) && !(saverKt$Saver$18 instanceof NonNullValueClassSaver)) || obj13 == null) {
                                    url = null;
                                } else {
                                    url = (LinkAnnotation.Url) saverKt$Saver$18.b.b(obj13);
                                }
                                url.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, url, str);
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                Object obj14 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.f;
                                if ((Intrinsics.a(obj14, Boolean.FALSE) && !(saverKt$Saver$19 instanceof NonNullValueClassSaver)) || obj14 == null) {
                                    clickable = null;
                                } else {
                                    clickable = (LinkAnnotation.Clickable) saverKt$Saver$19.b.b(obj14);
                                }
                                clickable.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, clickable, str);
                                break;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                Object obj15 = list2.get(1);
                                if (obj15 != null) {
                                    str2 = (String) obj15;
                                } else {
                                    str2 = null;
                                }
                                str2.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, new StringAnnotation(str2), str);
                                break;
                            default:
                                k8.e();
                                return null;
                        }
                        return range;
                    default:
                        SaverKt$Saver$1 saverKt$Saver$110 = SaversKt.a;
                        obj.getClass();
                        List list3 = (List) obj;
                        Object obj16 = list3.get(0);
                        int i82 = Color.i;
                        SaverKt$Saver$1 saverKt$Saver$111 = SaversKt.a;
                        Boolean bool2 = Boolean.FALSE;
                        Intrinsics.a(obj16, bool2);
                        if (obj16 != null) {
                            color2 = (Color) saversKt$ColorSaver$2.b(obj16);
                        } else {
                            color2 = null;
                        }
                        color2.getClass();
                        long j4 = color2.a;
                        Object obj17 = list3.get(1);
                        TextUnitType[] textUnitTypeArr = TextUnit.b;
                        Function1 function1 = SaversKt.v.b;
                        Intrinsics.a(obj17, bool2);
                        if (obj17 != null) {
                            textUnit = (TextUnit) function1.b(obj17);
                        } else {
                            textUnit = null;
                        }
                        textUnit.getClass();
                        long j5 = textUnit.a;
                        Object obj18 = list3.get(2);
                        FontWeight fontWeight2 = FontWeight.k;
                        SaverKt$Saver$1 saverKt$Saver$112 = SaversKt.m;
                        if ((Intrinsics.a(obj18, bool2) && !(saverKt$Saver$112 instanceof NonNullValueClassSaver)) || obj18 == null) {
                            fontWeight = null;
                        } else {
                            fontWeight = (FontWeight) saverKt$Saver$112.b.b(obj18);
                        }
                        Object obj19 = list3.get(3);
                        SaverKt$Saver$1 saverKt$Saver$113 = SaversKt.t;
                        if ((Intrinsics.a(obj19, bool2) && !(saverKt$Saver$113 instanceof NonNullValueClassSaver)) || obj19 == null) {
                            fontStyle = null;
                        } else {
                            fontStyle = (FontStyle) saverKt$Saver$113.b.b(obj19);
                        }
                        Object obj20 = list3.get(4);
                        SaverKt$Saver$1 saverKt$Saver$114 = SaversKt.u;
                        if ((Intrinsics.a(obj20, bool2) && !(saverKt$Saver$114 instanceof NonNullValueClassSaver)) || obj20 == null) {
                            fontSynthesis = null;
                        } else {
                            fontSynthesis = (FontSynthesis) saverKt$Saver$114.b.b(obj20);
                        }
                        Object obj21 = list3.get(6);
                        if (obj21 != null) {
                            str3 = (String) obj21;
                        } else {
                            str3 = null;
                        }
                        Object obj22 = list3.get(7);
                        Intrinsics.a(obj22, bool2);
                        if (obj22 != null) {
                            textUnit2 = (TextUnit) function1.b(obj22);
                        } else {
                            textUnit2 = null;
                        }
                        textUnit2.getClass();
                        long j6 = textUnit2.a;
                        Object obj23 = list3.get(8);
                        SaverKt$Saver$1 saverKt$Saver$115 = SaversKt.n;
                        if ((Intrinsics.a(obj23, bool2) && !(saverKt$Saver$115 instanceof NonNullValueClassSaver)) || obj23 == null) {
                            baselineShift = null;
                        } else {
                            baselineShift = (BaselineShift) saverKt$Saver$115.b.b(obj23);
                        }
                        Object obj24 = list3.get(9);
                        SaverKt$Saver$1 saverKt$Saver$116 = SaversKt.k;
                        if ((Intrinsics.a(obj24, bool2) && !(saverKt$Saver$116 instanceof NonNullValueClassSaver)) || obj24 == null) {
                            textGeometricTransform = null;
                        } else {
                            textGeometricTransform = (TextGeometricTransform) saverKt$Saver$116.b.b(obj24);
                        }
                        Object obj25 = list3.get(10);
                        LocaleList localeList2 = LocaleList.l;
                        SaverKt$Saver$1 saverKt$Saver$117 = SaversKt.y;
                        if ((Intrinsics.a(obj25, bool2) && !(saverKt$Saver$117 instanceof NonNullValueClassSaver)) || obj25 == null) {
                            localeList = null;
                        } else {
                            localeList = (LocaleList) saverKt$Saver$117.b.b(obj25);
                        }
                        Object obj26 = list3.get(11);
                        Intrinsics.a(obj26, bool2);
                        if (obj26 != null) {
                            color3 = (Color) saversKt$ColorSaver$2.b(obj26);
                        } else {
                            color3 = null;
                        }
                        color3.getClass();
                        long j7 = color3.a;
                        Object obj27 = list3.get(12);
                        SaverKt$Saver$1 saverKt$Saver$118 = SaversKt.j;
                        if ((Intrinsics.a(obj27, bool2) && !(saverKt$Saver$118 instanceof NonNullValueClassSaver)) || obj27 == null) {
                            textDecoration = null;
                        } else {
                            textDecoration = (TextDecoration) saverKt$Saver$118.b.b(obj27);
                        }
                        Object obj28 = list3.get(13);
                        Shadow shadow2 = Shadow.d;
                        SaverKt$Saver$1 saverKt$Saver$119 = SaversKt.o;
                        if ((Intrinsics.a(obj28, bool2) && !(saverKt$Saver$119 instanceof NonNullValueClassSaver)) || obj28 == null) {
                            shadow = null;
                        } else {
                            shadow = (Shadow) saverKt$Saver$119.b.b(obj28);
                        }
                        return new SpanStyle(j4, j5, fontWeight, fontStyle, fontSynthesis, (FontFamily) null, str3, j6, baselineShift, textGeometricTransform, localeList, j7, textDecoration, shadow, 49184);
                }
            }
        });
        i = new SaverKt$Saver$1(new ke(i11), new wc(11));
        int i16 = 22;
        j = new SaverKt$Saver$1(new z6(i16), new wc(13));
        k = new SaverKt$Saver$1(new z6(i4), new wc(14));
        int i17 = 24;
        l = new SaverKt$Saver$1(new z6(i17), new wc(15));
        m = new SaverKt$Saver$1(new z6(25), new wc(i6));
        n = new SaverKt$Saver$1(new z6(27), new wc(i12));
        new SaverKt$Saver$1(new z6(29), new wc(i8));
        final int i18 = 0;
        o = new SaverKt$Saver$1(new ke(i18), new Function1() { // from class: androidx.compose.ui.text.b
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Color color;
                Offset offset;
                Float f2;
                AnnotationType annotationType;
                Integer num;
                Integer num2;
                String str;
                ParagraphStyle paragraphStyle;
                AnnotatedString.Range range;
                SpanStyle spanStyle;
                VerbatimTtsAnnotation verbatimTtsAnnotation;
                UrlAnnotation urlAnnotation;
                LinkAnnotation.Url url;
                LinkAnnotation.Clickable clickable;
                String str2;
                Color color2;
                TextUnit textUnit;
                FontWeight fontWeight;
                FontStyle fontStyle;
                FontSynthesis fontSynthesis;
                String str3;
                TextUnit textUnit2;
                BaselineShift baselineShift;
                TextGeometricTransform textGeometricTransform;
                LocaleList localeList;
                Color color3;
                TextDecoration textDecoration;
                Shadow shadow;
                int i62 = i18;
                SaversKt$ColorSaver$2 saversKt$ColorSaver$2 = SaversKt$ColorSaver$2.j;
                switch (i62) {
                    case 0:
                        SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.a;
                        obj.getClass();
                        List list = (List) obj;
                        Object obj2 = list.get(0);
                        int i72 = Color.i;
                        SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.a;
                        Boolean bool = Boolean.FALSE;
                        Intrinsics.a(obj2, bool);
                        if (obj2 != null) {
                            color = (Color) saversKt$ColorSaver$2.b(obj2);
                        } else {
                            color = null;
                        }
                        color.getClass();
                        long j2 = color.a;
                        Object obj3 = list.get(1);
                        SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.x;
                        Intrinsics.a(obj3, bool);
                        if (obj3 != null) {
                            offset = (Offset) saversKt$NonNullValueClassSaver$1.b.b(obj3);
                        } else {
                            offset = null;
                        }
                        offset.getClass();
                        long j3 = offset.a;
                        Object obj4 = list.get(2);
                        if (obj4 != null) {
                            f2 = (Float) obj4;
                        } else {
                            f2 = null;
                        }
                        f2.getClass();
                        return new Shadow(j2, j3, f2.floatValue());
                    case 1:
                        SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.a;
                        obj.getClass();
                        List list2 = (List) obj;
                        Object obj5 = list2.get(0);
                        if (obj5 != null) {
                            annotationType = (AnnotationType) obj5;
                        } else {
                            annotationType = null;
                        }
                        annotationType.getClass();
                        Object obj6 = list2.get(2);
                        if (obj6 != null) {
                            num = (Integer) obj6;
                        } else {
                            num = null;
                        }
                        num.getClass();
                        int intValue = num.intValue();
                        Object obj7 = list2.get(3);
                        if (obj7 != null) {
                            num2 = (Integer) obj7;
                        } else {
                            num2 = null;
                        }
                        num2.getClass();
                        int intValue2 = num2.intValue();
                        Object obj8 = list2.get(4);
                        if (obj8 != null) {
                            str = (String) obj8;
                        } else {
                            str = null;
                        }
                        str.getClass();
                        switch (annotationType.ordinal()) {
                            case 0:
                                Object obj9 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.g;
                                if ((Intrinsics.a(obj9, Boolean.FALSE) && !(saverKt$Saver$14 instanceof NonNullValueClassSaver)) || obj9 == null) {
                                    paragraphStyle = null;
                                } else {
                                    paragraphStyle = (ParagraphStyle) saverKt$Saver$14.b.b(obj9);
                                }
                                paragraphStyle.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, paragraphStyle, str);
                                break;
                            case 1:
                                Object obj10 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.h;
                                if ((Intrinsics.a(obj10, Boolean.FALSE) && !(saverKt$Saver$15 instanceof NonNullValueClassSaver)) || obj10 == null) {
                                    spanStyle = null;
                                } else {
                                    spanStyle = (SpanStyle) saverKt$Saver$15.b.b(obj10);
                                }
                                spanStyle.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, spanStyle, str);
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                Object obj11 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.c;
                                if ((Intrinsics.a(obj11, Boolean.FALSE) && !(saverKt$Saver$16 instanceof NonNullValueClassSaver)) || obj11 == null) {
                                    verbatimTtsAnnotation = null;
                                } else {
                                    verbatimTtsAnnotation = (VerbatimTtsAnnotation) saverKt$Saver$16.b.b(obj11);
                                }
                                verbatimTtsAnnotation.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, verbatimTtsAnnotation, str);
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                Object obj12 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.d;
                                if ((Intrinsics.a(obj12, Boolean.FALSE) && !(saverKt$Saver$17 instanceof NonNullValueClassSaver)) || obj12 == null) {
                                    urlAnnotation = null;
                                } else {
                                    urlAnnotation = (UrlAnnotation) saverKt$Saver$17.b.b(obj12);
                                }
                                urlAnnotation.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, urlAnnotation, str);
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                Object obj13 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.e;
                                if ((Intrinsics.a(obj13, Boolean.FALSE) && !(saverKt$Saver$18 instanceof NonNullValueClassSaver)) || obj13 == null) {
                                    url = null;
                                } else {
                                    url = (LinkAnnotation.Url) saverKt$Saver$18.b.b(obj13);
                                }
                                url.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, url, str);
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                Object obj14 = list2.get(1);
                                SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.f;
                                if ((Intrinsics.a(obj14, Boolean.FALSE) && !(saverKt$Saver$19 instanceof NonNullValueClassSaver)) || obj14 == null) {
                                    clickable = null;
                                } else {
                                    clickable = (LinkAnnotation.Clickable) saverKt$Saver$19.b.b(obj14);
                                }
                                clickable.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, clickable, str);
                                break;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                Object obj15 = list2.get(1);
                                if (obj15 != null) {
                                    str2 = (String) obj15;
                                } else {
                                    str2 = null;
                                }
                                str2.getClass();
                                range = new AnnotatedString.Range(intValue, intValue2, new StringAnnotation(str2), str);
                                break;
                            default:
                                k8.e();
                                return null;
                        }
                        return range;
                    default:
                        SaverKt$Saver$1 saverKt$Saver$110 = SaversKt.a;
                        obj.getClass();
                        List list3 = (List) obj;
                        Object obj16 = list3.get(0);
                        int i82 = Color.i;
                        SaverKt$Saver$1 saverKt$Saver$111 = SaversKt.a;
                        Boolean bool2 = Boolean.FALSE;
                        Intrinsics.a(obj16, bool2);
                        if (obj16 != null) {
                            color2 = (Color) saversKt$ColorSaver$2.b(obj16);
                        } else {
                            color2 = null;
                        }
                        color2.getClass();
                        long j4 = color2.a;
                        Object obj17 = list3.get(1);
                        TextUnitType[] textUnitTypeArr = TextUnit.b;
                        Function1 function1 = SaversKt.v.b;
                        Intrinsics.a(obj17, bool2);
                        if (obj17 != null) {
                            textUnit = (TextUnit) function1.b(obj17);
                        } else {
                            textUnit = null;
                        }
                        textUnit.getClass();
                        long j5 = textUnit.a;
                        Object obj18 = list3.get(2);
                        FontWeight fontWeight2 = FontWeight.k;
                        SaverKt$Saver$1 saverKt$Saver$112 = SaversKt.m;
                        if ((Intrinsics.a(obj18, bool2) && !(saverKt$Saver$112 instanceof NonNullValueClassSaver)) || obj18 == null) {
                            fontWeight = null;
                        } else {
                            fontWeight = (FontWeight) saverKt$Saver$112.b.b(obj18);
                        }
                        Object obj19 = list3.get(3);
                        SaverKt$Saver$1 saverKt$Saver$113 = SaversKt.t;
                        if ((Intrinsics.a(obj19, bool2) && !(saverKt$Saver$113 instanceof NonNullValueClassSaver)) || obj19 == null) {
                            fontStyle = null;
                        } else {
                            fontStyle = (FontStyle) saverKt$Saver$113.b.b(obj19);
                        }
                        Object obj20 = list3.get(4);
                        SaverKt$Saver$1 saverKt$Saver$114 = SaversKt.u;
                        if ((Intrinsics.a(obj20, bool2) && !(saverKt$Saver$114 instanceof NonNullValueClassSaver)) || obj20 == null) {
                            fontSynthesis = null;
                        } else {
                            fontSynthesis = (FontSynthesis) saverKt$Saver$114.b.b(obj20);
                        }
                        Object obj21 = list3.get(6);
                        if (obj21 != null) {
                            str3 = (String) obj21;
                        } else {
                            str3 = null;
                        }
                        Object obj22 = list3.get(7);
                        Intrinsics.a(obj22, bool2);
                        if (obj22 != null) {
                            textUnit2 = (TextUnit) function1.b(obj22);
                        } else {
                            textUnit2 = null;
                        }
                        textUnit2.getClass();
                        long j6 = textUnit2.a;
                        Object obj23 = list3.get(8);
                        SaverKt$Saver$1 saverKt$Saver$115 = SaversKt.n;
                        if ((Intrinsics.a(obj23, bool2) && !(saverKt$Saver$115 instanceof NonNullValueClassSaver)) || obj23 == null) {
                            baselineShift = null;
                        } else {
                            baselineShift = (BaselineShift) saverKt$Saver$115.b.b(obj23);
                        }
                        Object obj24 = list3.get(9);
                        SaverKt$Saver$1 saverKt$Saver$116 = SaversKt.k;
                        if ((Intrinsics.a(obj24, bool2) && !(saverKt$Saver$116 instanceof NonNullValueClassSaver)) || obj24 == null) {
                            textGeometricTransform = null;
                        } else {
                            textGeometricTransform = (TextGeometricTransform) saverKt$Saver$116.b.b(obj24);
                        }
                        Object obj25 = list3.get(10);
                        LocaleList localeList2 = LocaleList.l;
                        SaverKt$Saver$1 saverKt$Saver$117 = SaversKt.y;
                        if ((Intrinsics.a(obj25, bool2) && !(saverKt$Saver$117 instanceof NonNullValueClassSaver)) || obj25 == null) {
                            localeList = null;
                        } else {
                            localeList = (LocaleList) saverKt$Saver$117.b.b(obj25);
                        }
                        Object obj26 = list3.get(11);
                        Intrinsics.a(obj26, bool2);
                        if (obj26 != null) {
                            color3 = (Color) saversKt$ColorSaver$2.b(obj26);
                        } else {
                            color3 = null;
                        }
                        color3.getClass();
                        long j7 = color3.a;
                        Object obj27 = list3.get(12);
                        SaverKt$Saver$1 saverKt$Saver$118 = SaversKt.j;
                        if ((Intrinsics.a(obj27, bool2) && !(saverKt$Saver$118 instanceof NonNullValueClassSaver)) || obj27 == null) {
                            textDecoration = null;
                        } else {
                            textDecoration = (TextDecoration) saverKt$Saver$118.b.b(obj27);
                        }
                        Object obj28 = list3.get(13);
                        Shadow shadow2 = Shadow.d;
                        SaverKt$Saver$1 saverKt$Saver$119 = SaversKt.o;
                        if ((Intrinsics.a(obj28, bool2) && !(saverKt$Saver$119 instanceof NonNullValueClassSaver)) || obj28 == null) {
                            shadow = null;
                        } else {
                            shadow = (Shadow) saverKt$Saver$119.b.b(obj28);
                        }
                        return new SpanStyle(j4, j5, fontWeight, fontStyle, fontSynthesis, (FontFamily) null, str3, j6, baselineShift, textGeometricTransform, localeList, j7, textDecoration, shadow, 49184);
                }
            }
        });
        p = new SaversKt$NonNullValueClassSaver$1(SaversKt$ColorSaver$1.j, SaversKt$ColorSaver$2.j);
        q = new SaversKt$NonNullValueClassSaver$1(new ke(i5), new wc(i14));
        r = new SaversKt$NonNullValueClassSaver$1(new ke(i15), new wc(i2));
        s = new SaversKt$NonNullValueClassSaver$1(new ke(3), new wc(i16));
        t = new SaverKt$Saver$1(new ke(4), new wc(i17));
        u = new SaverKt$Saver$1(new ke(5), new wc(25));
        v = new SaversKt$NonNullValueClassSaver$1(new ke(i7), new wc(i10));
        w = new SaversKt$NonNullValueClassSaver$1(new ke(i13), new wc(27));
        x = new SaversKt$NonNullValueClassSaver$1(new ke(9), new wc(i3));
        y = new SaverKt$Saver$1(new ke(10), new wc(29));
        z = new SaverKt$Saver$1(new ke(11), new le(i18));
        A = new SaverKt$Saver$1(new ke(12), new le(i15));
        B = new SaversKt$NonNullValueClassSaver$1(new ke(13), new le(3));
        C = new SaversKt$NonNullValueClassSaver$1(new ke(14), new le(4));
        D = new SaversKt$NonNullValueClassSaver$1(new ke(15), new le(5));
    }

    public static final Object a(Object obj, Saver saver, SaverScope saverScope) {
        Object b2;
        if (obj != null && (b2 = saver.b(saverScope, obj)) != null) {
            return b2;
        }
        return Boolean.FALSE;
    }
}
