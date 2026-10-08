package androidx.compose.ui.text;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AnnotationType {
    public static final AnnotationType j;
    public static final AnnotationType k;
    public static final AnnotationType l;
    public static final AnnotationType m;
    public static final AnnotationType n;
    public static final AnnotationType o;
    public static final AnnotationType p;
    public static final /* synthetic */ AnnotationType[] q;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.text.AnnotationType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.text.AnnotationType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.text.AnnotationType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.compose.ui.text.AnnotationType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.compose.ui.text.AnnotationType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.ui.text.AnnotationType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r6v2, types: [androidx.compose.ui.text.AnnotationType, java.lang.Enum] */
    static {
        ?? r0 = new Enum("Paragraph", 0);
        j = r0;
        ?? r1 = new Enum("Span", 1);
        k = r1;
        ?? r2 = new Enum("VerbatimTts", 2);
        l = r2;
        ?? r3 = new Enum("Url", 3);
        m = r3;
        ?? r4 = new Enum("Link", 4);
        n = r4;
        ?? r5 = new Enum("Clickable", 5);
        o = r5;
        ?? r6 = new Enum("String", 6);
        p = r6;
        AnnotationType[] annotationTypeArr = {r0, r1, r2, r3, r4, r5, r6};
        q = annotationTypeArr;
        EnumEntriesKt.a(annotationTypeArr);
    }

    public static AnnotationType valueOf(String str) {
        return (AnnotationType) Enum.valueOf(AnnotationType.class, str);
    }

    public static AnnotationType[] values() {
        return (AnnotationType[]) q.clone();
    }
}
