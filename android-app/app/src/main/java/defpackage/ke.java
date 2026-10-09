package defpackage;

import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SaversKt$NonNullValueClassSaver$1;
import androidx.compose.ui.text.Savers_androidKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.UrlAnnotation;
import androidx.compose.ui.text.VerbatimTtsAnnotation;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
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
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ke implements Function2 {
    public final /* synthetic */ int j;

    public /* synthetic */ ke(int i) {
        this.j = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z = false;
        boolean z2 = false;
        switch (this.j) {
            case 0:
                SaverScope saverScope = (SaverScope) obj;
                Shadow shadow = (Shadow) obj2;
                SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.a;
                return CollectionsKt.h(SaversKt.a(new Color(shadow.a), SaversKt.p, saverScope), SaversKt.a(new Offset(shadow.b), SaversKt.x, saverScope), Float.valueOf(shadow.c));
            case 1:
                SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.a;
                return Integer.valueOf(((TextAlign) obj2).a);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.a;
                return Integer.valueOf(((TextDirection) obj2).a);
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.a;
                return Integer.valueOf(((Hyphens) obj2).a);
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.a;
                return Integer.valueOf(((FontStyle) obj2).a);
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.a;
                return Integer.valueOf(((FontSynthesis) obj2).a);
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                SaverScope saverScope2 = (SaverScope) obj;
                TextUnit textUnit = (TextUnit) obj2;
                SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.a;
                long j = TextUnit.c;
                if (textUnit != null) {
                    z = TextUnit.a(textUnit.a, j);
                }
                if (z) {
                    return Boolean.FALSE;
                }
                return CollectionsKt.h(Float.valueOf(TextUnit.c(textUnit.a)), SaversKt.a(new TextUnitType(TextUnit.b(textUnit.a)), SaversKt.w, saverScope2));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                LinkAnnotation.Clickable clickable = (LinkAnnotation.Clickable) obj2;
                SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.a;
                return CollectionsKt.h(clickable.a, SaversKt.a(clickable.b, SaversKt.i, (SaverScope) obj));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.a;
                long j2 = ((TextUnitType) obj2).a;
                if (TextUnitType.a(j2, 8589934592L)) {
                    return 0;
                }
                if (TextUnitType.a(j2, 4294967296L)) {
                    return 1;
                }
                return Boolean.FALSE;
            case KeyModifiers.a /* 9 */:
                Offset offset = (Offset) obj2;
                SaverKt$Saver$1 saverKt$Saver$110 = SaversKt.a;
                if (offset != null) {
                    z2 = Offset.c(offset.a, 9205357640488583168L);
                }
                if (z2) {
                    return Boolean.FALSE;
                }
                return CollectionsKt.h(Float.valueOf(Float.intBitsToFloat((int) (offset.a >> 32))), Float.valueOf(Float.intBitsToFloat((int) (offset.a & 4294967295L))));
            case KeyModifiers.b /* 10 */:
                SaverScope saverScope3 = (SaverScope) obj;
                SaverKt$Saver$1 saverKt$Saver$111 = SaversKt.a;
                List list = ((LocaleList) obj2).j;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    arrayList.add(SaversKt.a((Locale) list.get(i), SaversKt.z, saverScope3));
                }
                return arrayList;
            case 11:
                SaverKt$Saver$1 saverKt$Saver$112 = SaversKt.a;
                return ((Locale) obj2).a.toLanguageTag();
            case KeyModifiers.c /* 12 */:
                SaverScope saverScope4 = (SaverScope) obj;
                LineHeightStyle lineHeightStyle = (LineHeightStyle) obj2;
                SaverKt$Saver$1 saverKt$Saver$113 = SaversKt.a;
                return CollectionsKt.h(SaversKt.a(new LineHeightStyle.Alignment(lineHeightStyle.a), SaversKt.B, saverScope4), SaversKt.a(new LineHeightStyle.Trim(lineHeightStyle.b), SaversKt.C, saverScope4), SaversKt.a(new LineHeightStyle.Mode(lineHeightStyle.c), SaversKt.D, saverScope4));
            case 13:
                SaverKt$Saver$1 saverKt$Saver$114 = SaversKt.a;
                return Float.valueOf(((LineHeightStyle.Alignment) obj2).a);
            case 14:
                SaverKt$Saver$1 saverKt$Saver$115 = SaversKt.a;
                return Integer.valueOf(((LineHeightStyle.Trim) obj2).a);
            case 15:
                SaverKt$Saver$1 saverKt$Saver$116 = SaversKt.a;
                return Integer.valueOf(((LineHeightStyle.Mode) obj2).a);
            case 16:
                SaverKt$Saver$1 saverKt$Saver$117 = SaversKt.a;
                return ((VerbatimTtsAnnotation) obj2).a;
            case 17:
                SaverScope saverScope5 = (SaverScope) obj;
                ParagraphStyle paragraphStyle = (ParagraphStyle) obj2;
                SaverKt$Saver$1 saverKt$Saver$118 = SaversKt.a;
                Object a = SaversKt.a(new TextAlign(paragraphStyle.a), SaversKt.q, saverScope5);
                Object a2 = SaversKt.a(new TextDirection(paragraphStyle.b), SaversKt.r, saverScope5);
                Object a3 = SaversKt.a(new TextUnit(paragraphStyle.c), SaversKt.v, saverScope5);
                TextIndent textIndent = paragraphStyle.d;
                TextIndent textIndent2 = TextIndent.c;
                Object a4 = SaversKt.a(textIndent, SaversKt.l, saverScope5);
                Object a5 = SaversKt.a(paragraphStyle.e, Savers_androidKt.a, saverScope5);
                LineHeightStyle lineHeightStyle2 = paragraphStyle.f;
                LineHeightStyle lineHeightStyle3 = LineHeightStyle.d;
                return CollectionsKt.h(a, a2, a3, a4, a5, SaversKt.a(lineHeightStyle2, SaversKt.A, saverScope5), SaversKt.a(new LineBreak(paragraphStyle.g), Savers_androidKt.c, saverScope5), SaversKt.a(new Hyphens(paragraphStyle.h), SaversKt.s, saverScope5), SaversKt.a(paragraphStyle.i, Savers_androidKt.d, saverScope5));
            case 18:
                SaverKt$Saver$1 saverKt$Saver$119 = SaversKt.a;
                return ((UrlAnnotation) obj2).a;
            case 19:
                SaverScope saverScope6 = (SaverScope) obj;
                SpanStyle spanStyle = (SpanStyle) obj2;
                SaverKt$Saver$1 saverKt$Saver$120 = SaversKt.a;
                Color color = new Color(spanStyle.a.b());
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.p;
                Object a6 = SaversKt.a(color, saversKt$NonNullValueClassSaver$1, saverScope6);
                TextUnit textUnit2 = new TextUnit(spanStyle.b);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$12 = SaversKt.v;
                Object a7 = SaversKt.a(textUnit2, saversKt$NonNullValueClassSaver$12, saverScope6);
                FontWeight fontWeight = spanStyle.c;
                FontWeight fontWeight2 = FontWeight.k;
                Object a8 = SaversKt.a(fontWeight, SaversKt.m, saverScope6);
                Object a9 = SaversKt.a(spanStyle.d, SaversKt.t, saverScope6);
                Object a10 = SaversKt.a(spanStyle.e, SaversKt.u, saverScope6);
                String str = spanStyle.g;
                Object a11 = SaversKt.a(new TextUnit(spanStyle.h), saversKt$NonNullValueClassSaver$12, saverScope6);
                Object a12 = SaversKt.a(spanStyle.i, SaversKt.n, saverScope6);
                Object a13 = SaversKt.a(spanStyle.j, SaversKt.k, saverScope6);
                LocaleList localeList = spanStyle.k;
                LocaleList localeList2 = LocaleList.l;
                Object a14 = SaversKt.a(localeList, SaversKt.y, saverScope6);
                Object a15 = SaversKt.a(new Color(spanStyle.l), saversKt$NonNullValueClassSaver$1, saverScope6);
                Object a16 = SaversKt.a(spanStyle.m, SaversKt.j, saverScope6);
                Shadow shadow2 = spanStyle.n;
                Shadow shadow3 = Shadow.d;
                return CollectionsKt.h(a6, a7, a8, a9, a10, -1, str, a11, a12, a13, a14, a15, a16, SaversKt.a(shadow2, SaversKt.o, saverScope6));
            case 20:
                SaverScope saverScope7 = (SaverScope) obj;
                TextLinkStyles textLinkStyles = (TextLinkStyles) obj2;
                SaverKt$Saver$1 saverKt$Saver$121 = SaversKt.a;
                SpanStyle spanStyle2 = textLinkStyles.a;
                SaverKt$Saver$1 saverKt$Saver$122 = SaversKt.h;
                return CollectionsKt.h(SaversKt.a(spanStyle2, saverKt$Saver$122, saverScope7), SaversKt.a(textLinkStyles.b, saverKt$Saver$122, saverScope7), SaversKt.a(textLinkStyles.c, saverKt$Saver$122, saverScope7), SaversKt.a(textLinkStyles.d, saverKt$Saver$122, saverScope7));
            case 21:
                PlatformParagraphStyle platformParagraphStyle = (PlatformParagraphStyle) obj2;
                Boolean valueOf = Boolean.valueOf(platformParagraphStyle.a);
                SaverKt$Saver$1 saverKt$Saver$123 = SaversKt.a;
                return CollectionsKt.h(valueOf, SaversKt.a(new EmojiSupportMatch(platformParagraphStyle.b), Savers_androidKt.b, (SaverScope) obj));
            case 22:
                return Integer.valueOf(((EmojiSupportMatch) obj2).a);
            case 23:
                return Integer.valueOf(((LineBreak) obj2).a);
            case 24:
                TextMotion textMotion = (TextMotion) obj2;
                return CollectionsKt.h(SaversKt.a(new TextMotion.Linearity(textMotion.a), Savers_androidKt.e, (SaverScope) obj), Boolean.valueOf(textMotion.b));
            case 25:
                return Integer.valueOf(((TextMotion.Linearity) obj2).a);
            case 26:
                return Integer.valueOf(((ScrollState) obj2).f());
            case 27:
                Collection collection = (List) obj;
                List list2 = (List) obj2;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsActions.a;
                if (collection == null) {
                    collection = EmptyList.j;
                }
                return CollectionsKt.F(collection, list2);
            case 28:
                List list3 = (List) obj;
                List list4 = (List) obj2;
                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.a;
                if (list3 != null) {
                    ArrayList arrayList2 = new ArrayList(list3);
                    arrayList2.addAll(list4);
                    return arrayList2;
                }
                return list4;
            default:
                Float f = (Float) obj;
                ((Float) obj2).floatValue();
                SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.a;
                return f;
        }
    }
}
