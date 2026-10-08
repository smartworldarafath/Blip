package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.k8;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        AnnotationType annotationType;
        Object a;
        SaverScope saverScope = (SaverScope) obj;
        AnnotatedString.Range range = (AnnotatedString.Range) obj2;
        SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.a;
        Object obj3 = range.a;
        if (obj3 instanceof ParagraphStyle) {
            annotationType = AnnotationType.j;
        } else if (obj3 instanceof SpanStyle) {
            annotationType = AnnotationType.k;
        } else if (obj3 instanceof VerbatimTtsAnnotation) {
            annotationType = AnnotationType.l;
        } else if (obj3 instanceof UrlAnnotation) {
            annotationType = AnnotationType.m;
        } else if (obj3 instanceof LinkAnnotation.Url) {
            annotationType = AnnotationType.n;
        } else if (obj3 instanceof LinkAnnotation.Clickable) {
            annotationType = AnnotationType.o;
        } else if (obj3 instanceof StringAnnotation) {
            annotationType = AnnotationType.p;
        } else {
            throw new UnsupportedOperationException();
        }
        switch (annotationType.ordinal()) {
            case 0:
                obj3.getClass();
                a = SaversKt.a((ParagraphStyle) obj3, SaversKt.g, saverScope);
                break;
            case 1:
                obj3.getClass();
                a = SaversKt.a((SpanStyle) obj3, SaversKt.h, saverScope);
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                obj3.getClass();
                a = SaversKt.a((VerbatimTtsAnnotation) obj3, SaversKt.c, saverScope);
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                obj3.getClass();
                a = SaversKt.a((UrlAnnotation) obj3, SaversKt.d, saverScope);
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                obj3.getClass();
                a = SaversKt.a((LinkAnnotation.Url) obj3, SaversKt.e, saverScope);
                break;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                obj3.getClass();
                a = SaversKt.a((LinkAnnotation.Clickable) obj3, SaversKt.f, saverScope);
                break;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                obj3.getClass();
                a = ((StringAnnotation) obj3).a;
                break;
            default:
                k8.e();
                return null;
        }
        return CollectionsKt.h(annotationType, a, Integer.valueOf(range.b), Integer.valueOf(range.c), range.d);
    }
}
