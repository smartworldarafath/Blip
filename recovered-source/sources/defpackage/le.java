package defpackage;

import android.content.res.Resources;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.material.SwitchKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.NonNullValueClassSaver;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SaversKt$NonNullValueClassSaver$1;
import androidx.compose.ui.text.Savers_androidKt;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.UrlAnnotation;
import androidx.compose.ui.text.VerbatimTtsAnnotation;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import io.sentry.IScope;
import io.sentry.SentryLevel;
import io.sentry.kotlin.multiplatform.JvmScopeProvider;
import io.sentry.kotlin.multiplatform.Scope;
import io.sentry.kotlin.multiplatform.extensions.SentryLevelExtensions_jvmKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import net.blip.libblip.Device;
import net.blip.libblip.DeviceReach;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class le implements Function1 {
    public final /* synthetic */ int j;

    public /* synthetic */ le(int i) {
        this.j = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        String str;
        LineHeightStyle.Alignment alignment;
        LineHeightStyle.Trim trim;
        TextAlign textAlign;
        TextDirection textDirection;
        TextUnit textUnit;
        TextIndent textIndent;
        PlatformParagraphStyle platformParagraphStyle;
        LineHeightStyle lineHeightStyle;
        LineBreak lineBreak;
        Hyphens hyphens;
        Boolean bool;
        TextMotion.Linearity linearity;
        int i = this.j;
        Unit unit = Unit.a;
        TextLinkStyles textLinkStyles = null;
        SentryLevel sentryLevel = null;
        Boolean bool2 = null;
        r7 = null;
        EmojiSupportMatch emojiSupportMatch = null;
        r7 = null;
        TextMotion textMotion = null;
        String str2 = null;
        String str3 = null;
        LineHeightStyle.Mode mode = null;
        textLinkStyles = null;
        boolean z = false;
        switch (i) {
            case 0:
                SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.a;
                obj.getClass();
                String str4 = (String) obj;
                Locale forLanguageTag = Locale.forLanguageTag(str4);
                if (Intrinsics.a(forLanguageTag.toLanguageTag(), "und")) {
                    System.err.println("The language tag " + str4 + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtag delimiter and must be replaced with '-'.");
                }
                return new androidx.compose.ui.text.intl.Locale(forLanguageTag);
            case 1:
                SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.a;
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                if (obj2 != null) {
                    str = (String) obj2;
                } else {
                    str = null;
                }
                str.getClass();
                Object obj3 = list.get(1);
                SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.i;
                if ((!Intrinsics.a(obj3, Boolean.FALSE) || (saverKt$Saver$13 instanceof NonNullValueClassSaver)) && obj3 != null) {
                    textLinkStyles = (TextLinkStyles) saverKt$Saver$13.b.b(obj3);
                }
                return new LinkAnnotation.Clickable(str, textLinkStyles);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.a;
                obj.getClass();
                List list2 = (List) obj;
                Object obj4 = list2.get(0);
                float f = LineHeightStyle.Alignment.b;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.B;
                Boolean bool3 = Boolean.FALSE;
                Intrinsics.a(obj4, bool3);
                if (obj4 != null) {
                    alignment = (LineHeightStyle.Alignment) saversKt$NonNullValueClassSaver$1.b.b(obj4);
                } else {
                    alignment = null;
                }
                alignment.getClass();
                float f2 = alignment.a;
                Object obj5 = list2.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$12 = SaversKt.C;
                Intrinsics.a(obj5, bool3);
                if (obj5 != null) {
                    trim = (LineHeightStyle.Trim) saversKt$NonNullValueClassSaver$12.b.b(obj5);
                } else {
                    trim = null;
                }
                trim.getClass();
                int i2 = trim.a;
                Object obj6 = list2.get(2);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$13 = SaversKt.D;
                Intrinsics.a(obj6, bool3);
                if (obj6 != null) {
                    mode = (LineHeightStyle.Mode) saversKt$NonNullValueClassSaver$13.b.b(obj6);
                }
                mode.getClass();
                return new LineHeightStyle(f2, i2, mode.a);
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.a;
                obj.getClass();
                float floatValue = ((Float) obj).floatValue();
                LineHeightStyle.Alignment.a(floatValue);
                return new LineHeightStyle.Alignment(floatValue);
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.a;
                obj.getClass();
                return new LineHeightStyle.Trim(((Integer) obj).intValue());
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.a;
                obj.getClass();
                return new LineHeightStyle.Mode(((Integer) obj).intValue());
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.a;
                if (obj != null) {
                    str3 = (String) obj;
                }
                str3.getClass();
                return new VerbatimTtsAnnotation(str3);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.a;
                if (obj != null) {
                    str2 = (String) obj;
                }
                str2.getClass();
                return new UrlAnnotation(str2);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                SaverKt$Saver$1 saverKt$Saver$110 = SaversKt.a;
                obj.getClass();
                List list3 = (List) obj;
                Object obj7 = list3.get(0);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$14 = SaversKt.q;
                Boolean bool4 = Boolean.FALSE;
                Intrinsics.a(obj7, bool4);
                if (obj7 != null) {
                    textAlign = (TextAlign) saversKt$NonNullValueClassSaver$14.b.b(obj7);
                } else {
                    textAlign = null;
                }
                textAlign.getClass();
                int i3 = textAlign.a;
                Object obj8 = list3.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$15 = SaversKt.r;
                Intrinsics.a(obj8, bool4);
                if (obj8 != null) {
                    textDirection = (TextDirection) saversKt$NonNullValueClassSaver$15.b.b(obj8);
                } else {
                    textDirection = null;
                }
                textDirection.getClass();
                int i4 = textDirection.a;
                Object obj9 = list3.get(2);
                TextUnitType[] textUnitTypeArr = TextUnit.b;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$16 = SaversKt.v;
                Intrinsics.a(obj9, bool4);
                if (obj9 != null) {
                    textUnit = (TextUnit) saversKt$NonNullValueClassSaver$16.b.b(obj9);
                } else {
                    textUnit = null;
                }
                textUnit.getClass();
                long j = textUnit.a;
                Object obj10 = list3.get(3);
                TextIndent textIndent2 = TextIndent.c;
                SaverKt$Saver$1 saverKt$Saver$111 = SaversKt.l;
                if ((Intrinsics.a(obj10, bool4) && !(saverKt$Saver$111 instanceof NonNullValueClassSaver)) || obj10 == null) {
                    textIndent = null;
                } else {
                    textIndent = (TextIndent) saverKt$Saver$111.b.b(obj10);
                }
                Object obj11 = list3.get(4);
                boolean a = Intrinsics.a(obj11, bool4);
                SaverKt$Saver$1 saverKt$Saver$112 = Savers_androidKt.a;
                if ((a && !(saverKt$Saver$112 instanceof NonNullValueClassSaver)) || obj11 == null) {
                    platformParagraphStyle = null;
                } else {
                    platformParagraphStyle = (PlatformParagraphStyle) saverKt$Saver$112.b.b(obj11);
                }
                Object obj12 = list3.get(5);
                LineHeightStyle lineHeightStyle2 = LineHeightStyle.d;
                SaverKt$Saver$1 saverKt$Saver$113 = SaversKt.A;
                if ((Intrinsics.a(obj12, bool4) && !(saverKt$Saver$113 instanceof NonNullValueClassSaver)) || obj12 == null) {
                    lineHeightStyle = null;
                } else {
                    lineHeightStyle = (LineHeightStyle) saverKt$Saver$113.b.b(obj12);
                }
                Object obj13 = list3.get(6);
                boolean a2 = Intrinsics.a(obj13, bool4);
                SaverKt$Saver$1 saverKt$Saver$114 = Savers_androidKt.c;
                if ((a2 && !(saverKt$Saver$114 instanceof NonNullValueClassSaver)) || obj13 == null) {
                    lineBreak = null;
                } else {
                    lineBreak = (LineBreak) saverKt$Saver$114.b.b(obj13);
                }
                lineBreak.getClass();
                int i5 = lineBreak.a;
                Object obj14 = list3.get(7);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$17 = SaversKt.s;
                Intrinsics.a(obj14, bool4);
                if (obj14 != null) {
                    hyphens = (Hyphens) saversKt$NonNullValueClassSaver$17.b.b(obj14);
                } else {
                    hyphens = null;
                }
                hyphens.getClass();
                int i6 = hyphens.a;
                Object obj15 = list3.get(8);
                boolean a3 = Intrinsics.a(obj15, bool4);
                SaverKt$Saver$1 saverKt$Saver$115 = Savers_androidKt.d;
                if ((!a3 || (saverKt$Saver$115 instanceof NonNullValueClassSaver)) && obj15 != null) {
                    textMotion = (TextMotion) saverKt$Saver$115.b.b(obj15);
                }
                return new ParagraphStyle(i3, i4, j, textIndent, platformParagraphStyle, lineHeightStyle, i5, i6, textMotion);
            case KeyModifiers.a /* 9 */:
                obj.getClass();
                List list4 = (List) obj;
                Object obj16 = list4.get(0);
                if (obj16 != null) {
                    bool = (Boolean) obj16;
                } else {
                    bool = null;
                }
                bool.getClass();
                boolean booleanValue = bool.booleanValue();
                Object obj17 = list4.get(1);
                boolean a4 = Intrinsics.a(obj17, Boolean.FALSE);
                SaverKt$Saver$1 saverKt$Saver$116 = Savers_androidKt.b;
                if ((!a4 || (saverKt$Saver$116 instanceof NonNullValueClassSaver)) && obj17 != null) {
                    emojiSupportMatch = (EmojiSupportMatch) saverKt$Saver$116.b.b(obj17);
                }
                emojiSupportMatch.getClass();
                return new PlatformParagraphStyle(emojiSupportMatch.a, booleanValue);
            case KeyModifiers.b /* 10 */:
                obj.getClass();
                return new EmojiSupportMatch(((Integer) obj).intValue());
            case 11:
                obj.getClass();
                return new LineBreak(((Integer) obj).intValue());
            case KeyModifiers.c /* 12 */:
                obj.getClass();
                List list5 = (List) obj;
                Object obj18 = list5.get(0);
                boolean a5 = Intrinsics.a(obj18, Boolean.FALSE);
                SaverKt$Saver$1 saverKt$Saver$117 = Savers_androidKt.e;
                if ((a5 && !(saverKt$Saver$117 instanceof NonNullValueClassSaver)) || obj18 == null) {
                    linearity = null;
                } else {
                    linearity = (TextMotion.Linearity) saverKt$Saver$117.b.b(obj18);
                }
                linearity.getClass();
                int i7 = linearity.a;
                Object obj19 = list5.get(1);
                if (obj19 != null) {
                    bool2 = (Boolean) obj19;
                }
                bool2.getClass();
                return new TextMotion(i7, bool2.booleanValue());
            case 13:
                obj.getClass();
                return new TextMotion.Linearity(((Integer) obj).intValue());
            case 14:
                return new ScrollState(((Integer) obj).intValue());
            case 15:
                Offset offset = (Offset) obj;
                AnimationVector2D animationVector2D = SelectionMagnifierKt.a;
                long j2 = offset.a;
                if ((9223372034707292159L & j2) != 9205357640488583168L) {
                    return new AnimationVector2D(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (4294967295L & offset.a)));
                }
                return SelectionMagnifierKt.a;
            case 16:
                AnimationVector2D animationVector2D2 = (AnimationVector2D) obj;
                AnimationVector2D animationVector2D3 = SelectionMagnifierKt.a;
                float f3 = animationVector2D2.a;
                float f4 = animationVector2D2.b;
                return new Offset((Float.floatToRawIntBits(f4) & 4294967295L) | (Float.floatToRawIntBits(f3) << 32));
            case 17:
                Scope scope = (Scope) obj;
                scope.getClass();
                io.sentry.kotlin.multiplatform.SentryLevel sentryLevel2 = io.sentry.kotlin.multiplatform.SentryLevel.FATAL;
                IScope iScope = ((JvmScopeProvider) scope).a;
                if (sentryLevel2 != null) {
                    sentryLevel = SentryLevelExtensions_jvmKt.a(sentryLevel2);
                }
                iScope.n(sentryLevel);
                return unit;
            case 18:
                if (obj == null) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 19:
                ((String) obj).getClass();
                return Boolean.valueOf(!StringsKt.t(r0));
            case 20:
                ((String) obj).getClass();
                return Boolean.valueOf(!StringsKt.t(r0));
            case 21:
                Device device = (Device) obj;
                device.getClass();
                return device.q;
            case 22:
                Device device2 = (Device) obj;
                device2.getClass();
                DeviceReach deviceReach = device2.p;
                if (deviceReach != null) {
                    return Boolean.valueOf(deviceReach.m);
                }
                return Boolean.FALSE;
            case 23:
                le leVar = SnapshotKt.a;
                return unit;
            case 24:
                ((Placeable.PlacementScope) obj).getClass();
                return unit;
            case 25:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.m;
                KProperty kProperty = SemanticsPropertiesKt.a[5];
                Boolean bool5 = Boolean.TRUE;
                semanticsPropertyKey.getClass();
                ((SemanticsPropertyReceiver) obj).b(semanticsPropertyKey, bool5);
                return unit;
            case 26:
                return unit;
            case 27:
                float floatValue2 = ((Float) obj).floatValue();
                float f5 = SwitchKt.a;
                return Float.valueOf(floatValue2 * 0.7f);
            case 28:
                Resources resources = (Resources) obj;
                resources.getClass();
                if ((resources.getConfiguration().uiMode & 48) == 32) {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement a1 = sQLiteConnection.a1("SELECT DISTINCT work_spec_id FROM SystemIdInfo");
                try {
                    ArrayList arrayList = new ArrayList();
                    while (a1.V0()) {
                        arrayList.add(a1.r0(0));
                    }
                    return arrayList;
                } finally {
                    a1.close();
                }
        }
    }
}
