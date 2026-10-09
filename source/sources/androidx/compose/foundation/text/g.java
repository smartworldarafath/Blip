package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.unit.IntOffset;
import defpackage.p2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Function1 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ g(TextLinkScope textLinkScope, AnnotatedString.Range range, LinkStateInteractionSourceObserver linkStateInteractionSourceObserver) {
        this.k = range;
        this.l = linkStateInteractionSourceObserver;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        long j;
        SpanStyle spanStyle;
        SpanStyle spanStyle2;
        SpanStyle spanStyle3;
        TextLinkStyles a;
        TextLinkStyles a2;
        TextLinkStyles a3;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj2 = this.l;
        Object obj3 = this.k;
        switch (i) {
            case 0:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                ArrayList d = BasicTextKt.d((List) obj3, ((LinksTextMeasurePolicy) obj2).a);
                if (d != null) {
                    int size = d.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        Pair pair = (Pair) d.get(i2);
                        Placeable placeable = (Placeable) pair.j;
                        Function0 function0 = (Function0) pair.k;
                        if (function0 != null) {
                            j = ((IntOffset) function0.a()).a;
                        } else {
                            j = 0;
                        }
                        Placeable.PlacementScope.h(placementScope, placeable, j);
                    }
                }
                return unit;
            default:
                AnnotatedString.Range range = (AnnotatedString.Range) obj3;
                MutableIntState mutableIntState = ((LinkStateInteractionSourceObserver) obj2).b;
                TextAnnotatorScope textAnnotatorScope = (TextAnnotatorScope) obj;
                LinkAnnotation linkAnnotation = (LinkAnnotation) range.a;
                TextLinkStyles a4 = linkAnnotation.a();
                SpanStyle spanStyle4 = null;
                if (a4 != null) {
                    spanStyle = a4.a;
                } else {
                    spanStyle = null;
                }
                if ((((SnapshotMutableIntStateImpl) mutableIntState).j() & 1) != 0 && (a3 = linkAnnotation.a()) != null) {
                    spanStyle2 = a3.b;
                } else {
                    spanStyle2 = null;
                }
                if (spanStyle != null) {
                    spanStyle2 = spanStyle.c(spanStyle2);
                }
                if ((((SnapshotMutableIntStateImpl) mutableIntState).j() & 2) != 0 && (a2 = linkAnnotation.a()) != null) {
                    spanStyle3 = a2.c;
                } else {
                    spanStyle3 = null;
                }
                if (spanStyle2 != null) {
                    spanStyle3 = spanStyle2.c(spanStyle3);
                }
                if ((((SnapshotMutableIntStateImpl) mutableIntState).j() & 4) != 0 && (a = linkAnnotation.a()) != null) {
                    spanStyle4 = a.d;
                }
                if (spanStyle3 != null) {
                    spanStyle4 = spanStyle3.c(spanStyle4);
                }
                textAnnotatorScope.b = textAnnotatorScope.a.c(new p2(new Object(), range, spanStyle4, 16));
                return unit;
        }
    }

    public /* synthetic */ g(List list, LinksTextMeasurePolicy linksTextMeasurePolicy) {
        this.k = list;
        this.l = linksTextMeasurePolicy;
    }
}
