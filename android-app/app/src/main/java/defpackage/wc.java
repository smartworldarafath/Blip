package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.ProgressIndicatorKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.NonNullValueClassSaver;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SaversKt$NonNullValueClassSaver$1;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontVariation;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import androidx.compose.ui.window.PopupLayout;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.DatabaseConfiguration;
import java.util.ArrayList;
import java.util.List;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class wc implements Function1 {
    public final /* synthetic */ int j;

    public /* synthetic */ wc(int i) {
        this.j = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        SpanStyle spanStyle;
        SpanStyle spanStyle2;
        SpanStyle spanStyle3;
        List list;
        TextUnit textUnit;
        Integer num;
        String str;
        AnnotatedString.Range range;
        Float f;
        Float f2;
        Locale locale;
        int i = this.j;
        Unit unit = Unit.a;
        SpanStyle spanStyle4 = null;
        Float f3 = null;
        TextUnitType textUnitType = null;
        r5 = null;
        TextLinkStyles textLinkStyles = null;
        Integer num2 = null;
        TextUnit textUnit2 = null;
        String str2 = null;
        spanStyle4 = null;
        int i2 = 0;
        switch (i) {
            case 0:
                obj.getClass();
                return Boolean.valueOf(!((OwnerScope) obj).z());
            case 1:
                ((Boolean) obj).getClass();
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                wc wcVar = PlaceableKt.a;
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                FontVariation.Setting setting = (FontVariation.Setting) obj;
                return "'" + setting.b() + "' " + setting.a();
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                PopupLayout popupLayout = (PopupLayout) obj;
                wc wcVar2 = PopupLayout.N;
                if (popupLayout.isAttachedToWindow()) {
                    popupLayout.r();
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Context context = (Context) obj;
                List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain"), 0);
                ArrayList arrayList = new ArrayList(queryIntentActivities.size());
                int size = queryIntentActivities.size();
                while (i2 < size) {
                    ResolveInfo resolveInfo = queryIntentActivities.get(i2);
                    ResolveInfo resolveInfo2 = resolveInfo;
                    if (!context.getPackageName().equals(resolveInfo2.activityInfo.packageName)) {
                        ActivityInfo activityInfo = resolveInfo2.activityInfo;
                        if (activityInfo.exported) {
                            String str3 = activityInfo.permission;
                            if (str3 != null && context.checkSelfPermission(str3) != 0) {
                            }
                        }
                        i2++;
                    }
                    arrayList.add(resolveInfo);
                    i2++;
                }
                return arrayList;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig = (KeyframesSpec.KeyframesSpecConfig) obj;
                CubicBezierEasing cubicBezierEasing = ProgressIndicatorKt.a;
                keyframesSpecConfig.a = 1332;
                keyframesSpecConfig.a(Float.valueOf(0.0f), 0).b = ProgressIndicatorKt.a;
                keyframesSpecConfig.a(Float.valueOf(290.0f), 666);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig2 = (KeyframesSpec.KeyframesSpecConfig) obj;
                CubicBezierEasing cubicBezierEasing2 = ProgressIndicatorKt.a;
                keyframesSpecConfig2.a = 1332;
                keyframesSpecConfig2.a(Float.valueOf(0.0f), 666).b = ProgressIndicatorKt.a;
                keyframesSpecConfig2.a(Float.valueOf(290.0f), keyframesSpecConfig2.a);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ProgressBarRangeInfo progressBarRangeInfo = ProgressBarRangeInfo.c;
                KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.c;
                KProperty kProperty = SemanticsPropertiesKt.a[1];
                semanticsPropertyKey.getClass();
                ((SemanticsPropertyReceiver) obj).b(semanticsPropertyKey, progressBarRangeInfo);
                return unit;
            case KeyModifiers.a /* 9 */:
                ((DatabaseConfiguration) obj).getClass();
                throw new NotImplementedError(0);
            case KeyModifiers.b /* 10 */:
                return obj;
            case 11:
                SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.a;
                obj.getClass();
                List list2 = (List) obj;
                Object obj2 = list2.get(0);
                SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.h;
                Function1 function1 = saverKt$Saver$12.b;
                Boolean bool = Boolean.FALSE;
                if ((Intrinsics.a(obj2, bool) && !(saverKt$Saver$12 instanceof NonNullValueClassSaver)) || obj2 == null) {
                    spanStyle = null;
                } else {
                    spanStyle = (SpanStyle) function1.b(obj2);
                }
                Object obj3 = list2.get(1);
                if ((Intrinsics.a(obj3, bool) && !(saverKt$Saver$12 instanceof NonNullValueClassSaver)) || obj3 == null) {
                    spanStyle2 = null;
                } else {
                    spanStyle2 = (SpanStyle) function1.b(obj3);
                }
                Object obj4 = list2.get(2);
                if ((Intrinsics.a(obj4, bool) && !(saverKt$Saver$12 instanceof NonNullValueClassSaver)) || obj4 == null) {
                    spanStyle3 = null;
                } else {
                    spanStyle3 = (SpanStyle) function1.b(obj4);
                }
                Object obj5 = list2.get(3);
                if ((!Intrinsics.a(obj5, bool) || (saverKt$Saver$12 instanceof NonNullValueClassSaver)) && obj5 != null) {
                    spanStyle4 = (SpanStyle) function1.b(obj5);
                }
                return new TextLinkStyles(spanStyle, spanStyle2, spanStyle3, spanStyle4);
            case KeyModifiers.c /* 12 */:
                SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.a;
                obj.getClass();
                List list3 = (List) obj;
                Object obj6 = list3.get(1);
                SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.a;
                if ((Intrinsics.a(obj6, Boolean.FALSE) && !(saverKt$Saver$14 instanceof NonNullValueClassSaver)) || obj6 == null) {
                    list = null;
                } else {
                    list = (List) saverKt$Saver$14.b.b(obj6);
                }
                Object obj7 = list3.get(0);
                if (obj7 != null) {
                    str2 = (String) obj7;
                }
                str2.getClass();
                return new AnnotatedString(list, str2);
            case 13:
                SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.a;
                obj.getClass();
                return new TextDecoration(((Integer) obj).intValue());
            case 14:
                SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.a;
                obj.getClass();
                List list4 = (List) obj;
                return new TextGeometricTransform(((Number) list4.get(0)).floatValue(), ((Number) list4.get(1)).floatValue());
            case 15:
                SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.a;
                obj.getClass();
                List list5 = (List) obj;
                Object obj8 = list5.get(0);
                TextUnitType[] textUnitTypeArr = TextUnit.b;
                Function1 function12 = SaversKt.v.b;
                Boolean bool2 = Boolean.FALSE;
                Intrinsics.a(obj8, bool2);
                if (obj8 != null) {
                    textUnit = (TextUnit) function12.b(obj8);
                } else {
                    textUnit = null;
                }
                textUnit.getClass();
                long j = textUnit.a;
                Object obj9 = list5.get(1);
                Intrinsics.a(obj9, bool2);
                if (obj9 != null) {
                    textUnit2 = (TextUnit) function12.b(obj9);
                }
                textUnit2.getClass();
                return new TextIndent(j, textUnit2.a);
            case 16:
                SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.a;
                obj.getClass();
                return new FontWeight(((Integer) obj).intValue());
            case 17:
                SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.a;
                obj.getClass();
                return new BaselineShift(((Float) obj).floatValue());
            case 18:
                SaverKt$Saver$1 saverKt$Saver$110 = SaversKt.a;
                obj.getClass();
                List list6 = (List) obj;
                Object obj10 = list6.get(0);
                if (obj10 != null) {
                    num = (Integer) obj10;
                } else {
                    num = null;
                }
                num.getClass();
                int intValue = num.intValue();
                Object obj11 = list6.get(1);
                if (obj11 != null) {
                    num2 = (Integer) obj11;
                }
                num2.getClass();
                return new TextRange(TextRangeKt.a(intValue, num2.intValue()));
            case 19:
                SaverKt$Saver$1 saverKt$Saver$111 = SaversKt.a;
                obj.getClass();
                return new TextAlign(((Integer) obj).intValue());
            case 20:
                SaverKt$Saver$1 saverKt$Saver$112 = SaversKt.a;
                obj.getClass();
                List list7 = (List) obj;
                Object obj12 = list7.get(0);
                if (obj12 != null) {
                    str = (String) obj12;
                } else {
                    str = null;
                }
                str.getClass();
                Object obj13 = list7.get(1);
                SaverKt$Saver$1 saverKt$Saver$113 = SaversKt.i;
                if ((!Intrinsics.a(obj13, Boolean.FALSE) || (saverKt$Saver$113 instanceof NonNullValueClassSaver)) && obj13 != null) {
                    textLinkStyles = (TextLinkStyles) saverKt$Saver$113.b.b(obj13);
                }
                return new LinkAnnotation.Url(str, textLinkStyles);
            case 21:
                SaverKt$Saver$1 saverKt$Saver$114 = SaversKt.a;
                obj.getClass();
                return new TextDirection(((Integer) obj).intValue());
            case 22:
                SaverKt$Saver$1 saverKt$Saver$115 = SaversKt.a;
                obj.getClass();
                return new Hyphens(((Integer) obj).intValue());
            case 23:
                SaverKt$Saver$1 saverKt$Saver$116 = SaversKt.a;
                obj.getClass();
                List list8 = (List) obj;
                ArrayList arrayList2 = new ArrayList(list8.size());
                int size2 = list8.size();
                while (i2 < size2) {
                    Object obj14 = list8.get(i2);
                    SaverKt$Saver$1 saverKt$Saver$117 = SaversKt.b;
                    if ((Intrinsics.a(obj14, Boolean.FALSE) && !(saverKt$Saver$117 instanceof NonNullValueClassSaver)) || obj14 == null) {
                        range = null;
                    } else {
                        range = (AnnotatedString.Range) saverKt$Saver$117.b.b(obj14);
                    }
                    range.getClass();
                    arrayList2.add(range);
                    i2++;
                }
                return arrayList2;
            case 24:
                SaverKt$Saver$1 saverKt$Saver$118 = SaversKt.a;
                obj.getClass();
                return new FontStyle(((Integer) obj).intValue());
            case 25:
                SaverKt$Saver$1 saverKt$Saver$119 = SaversKt.a;
                obj.getClass();
                return new FontSynthesis(((Integer) obj).intValue());
            case 26:
                SaverKt$Saver$1 saverKt$Saver$120 = SaversKt.a;
                Boolean bool3 = Boolean.FALSE;
                if (Intrinsics.a(obj, bool3)) {
                    return new TextUnit(TextUnit.c);
                }
                obj.getClass();
                List list9 = (List) obj;
                Object obj15 = list9.get(0);
                if (obj15 != null) {
                    f = (Float) obj15;
                } else {
                    f = null;
                }
                f.getClass();
                float floatValue = f.floatValue();
                Object obj16 = list9.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.w;
                Intrinsics.a(obj16, bool3);
                if (obj16 != null) {
                    textUnitType = (TextUnitType) saversKt$NonNullValueClassSaver$1.b.b(obj16);
                }
                textUnitType.getClass();
                return new TextUnit(TextUnitKt.e(textUnitType.a, floatValue));
            case 27:
                SaverKt$Saver$1 saverKt$Saver$121 = SaversKt.a;
                if (Intrinsics.a(obj, 0)) {
                    return new TextUnitType(8589934592L);
                }
                if (Intrinsics.a(obj, 1)) {
                    return new TextUnitType(4294967296L);
                }
                return new TextUnitType(0L);
            case 28:
                SaverKt$Saver$1 saverKt$Saver$122 = SaversKt.a;
                if (Intrinsics.a(obj, Boolean.FALSE)) {
                    return new Offset(9205357640488583168L);
                }
                obj.getClass();
                List list10 = (List) obj;
                Object obj17 = list10.get(0);
                if (obj17 != null) {
                    f2 = (Float) obj17;
                } else {
                    f2 = null;
                }
                f2.getClass();
                float floatValue2 = f2.floatValue();
                Object obj18 = list10.get(1);
                if (obj18 != null) {
                    f3 = (Float) obj18;
                }
                f3.getClass();
                float floatValue3 = f3.floatValue();
                return new Offset((Float.floatToRawIntBits(floatValue3) & 4294967295L) | (Float.floatToRawIntBits(floatValue2) << 32));
            default:
                SaverKt$Saver$1 saverKt$Saver$123 = SaversKt.a;
                obj.getClass();
                List list11 = (List) obj;
                ArrayList arrayList3 = new ArrayList(list11.size());
                int size3 = list11.size();
                while (i2 < size3) {
                    Object obj19 = list11.get(i2);
                    SaverKt$Saver$1 saverKt$Saver$124 = SaversKt.z;
                    if ((Intrinsics.a(obj19, Boolean.FALSE) && !(saverKt$Saver$124 instanceof NonNullValueClassSaver)) || obj19 == null) {
                        locale = null;
                    } else {
                        locale = (Locale) saverKt$Saver$124.b.b(obj19);
                    }
                    locale.getClass();
                    arrayList3.add(locale);
                    i2++;
                }
                return new LocaleList(arrayList3);
        }
    }

    public /* synthetic */ wc(int i, Object obj) {
        this.j = i;
    }
}
