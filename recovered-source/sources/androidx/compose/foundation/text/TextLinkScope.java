package androidx.compose.foundation.text;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.HoverableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.input.pointer.PointerIcon_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextLinkStyles;
import defpackage.b1;
import defpackage.ec;
import defpackage.n5;
import defpackage.qg;
import defpackage.tg;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SpreadBuilder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextLinkScope {
    public AnnotatedString b;
    public final MutableState a = SnapshotStateKt.g(null);
    public final SnapshotStateList c = new SnapshotStateList();

    public TextLinkScope(AnnotatedString annotatedString) {
        this.b = annotatedString.a(new qg(9));
    }

    public static AnnotatedString.Range c(AnnotatedString.Range range, TextLayoutResult textLayoutResult) {
        int c = textLayoutResult.b.c(r3.f - 1, false);
        if (range.b >= c) {
            return null;
        }
        return AnnotatedString.Range.a(range, null, Math.min(range.c, c), 11);
    }

    public final void a(int i, Composer composer) {
        int i2;
        boolean z;
        char c;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SpanStyle spanStyle;
        SpanStyle spanStyle2;
        SpanStyle spanStyle3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1154651354);
        char c2 = 2;
        if (gapComposer.h(this)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        boolean z7 = false;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            UriHandler uriHandler = (UriHandler) gapComposer.j(CompositionLocalsKt.s);
            AnnotatedString annotatedString = this.b;
            List b = annotatedString.b(annotatedString.k.length());
            int size = b.size();
            int i4 = 0;
            while (i4 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) b.get(i4);
                int i5 = range.b;
                Object obj = range.a;
                if (i5 != range.c) {
                    gapComposer.W(725478935);
                    Object K = gapComposer.K();
                    Object obj2 = Composer.Companion.a;
                    if (K == obj2) {
                        K = InteractionSourceKt.a();
                        gapComposer.g0(K);
                    }
                    MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) K;
                    c = c2;
                    Modifier a = GraphicsLayerModifierKt.a(Modifier.Companion.b, new ec(16, this, range));
                    Object K2 = gapComposer.K();
                    if (K2 == obj2) {
                        z3 = true;
                        K2 = new qg(10);
                        gapComposer.g0(K2);
                    } else {
                        z3 = true;
                    }
                    Modifier a2 = HoverableKt.a(SemanticsModifierKt.a(a, z7, (Function1) K2).l(new TextRangeLayoutModifier(new n5(7, this, range))), mutableInteractionSource);
                    PointerIcon.a.getClass();
                    Modifier a3 = PointerIconKt.a(a2, PointerIcon_androidKt.c);
                    boolean h = gapComposer.h(this) | gapComposer.f(range) | gapComposer.h(uriHandler);
                    Object K3 = gapComposer.K();
                    if (h || K3 == obj2) {
                        K3 = new tg(this, range, uriHandler);
                        gapComposer.g0(K3);
                    }
                    BoxKt.a(ClickableKt.c(a3, mutableInteractionSource, null, false, null, (Function0) K3, 508), gapComposer, 0);
                    LinkAnnotation linkAnnotation = (LinkAnnotation) obj;
                    TextLinkStyles a4 = linkAnnotation.a();
                    if (a4 == null || (a4.a == null && a4.b == null && a4.c == null && a4.d == null)) {
                        z2 = false;
                        gapComposer.W(728331710);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(726303039);
                        Object K4 = gapComposer.K();
                        if (K4 == obj2) {
                            K4 = new LinkStateInteractionSourceObserver(mutableInteractionSource);
                            gapComposer.g0(K4);
                        }
                        LinkStateInteractionSourceObserver linkStateInteractionSourceObserver = (LinkStateInteractionSourceObserver) K4;
                        Object K5 = gapComposer.K();
                        SpanStyle spanStyle4 = null;
                        if (K5 == obj2) {
                            K5 = new TextLinkScope$LinksComposables$1$3$1(linkStateInteractionSourceObserver, null);
                            gapComposer.g0(K5);
                        }
                        EffectsKt.e(gapComposer, Unit.a, (Function2) K5);
                        MutableIntState mutableIntState = linkStateInteractionSourceObserver.b;
                        MutableIntState mutableIntState2 = linkStateInteractionSourceObserver.b;
                        if ((((SnapshotMutableIntStateImpl) mutableIntState).j() & 2) != 0) {
                            z4 = z3;
                        } else {
                            z4 = false;
                        }
                        Boolean valueOf = Boolean.valueOf(z4);
                        if ((((SnapshotMutableIntStateImpl) mutableIntState2).j() & 1) != 0) {
                            z5 = z3;
                        } else {
                            z5 = false;
                        }
                        Boolean valueOf2 = Boolean.valueOf(z5);
                        if ((((SnapshotMutableIntStateImpl) mutableIntState2).j() & 4) != 0) {
                            z6 = z3;
                        } else {
                            z6 = false;
                        }
                        Boolean valueOf3 = Boolean.valueOf(z6);
                        TextLinkStyles a5 = linkAnnotation.a();
                        if (a5 != null) {
                            spanStyle = a5.a;
                        } else {
                            spanStyle = null;
                        }
                        TextLinkStyles a6 = linkAnnotation.a();
                        if (a6 != null) {
                            spanStyle2 = a6.b;
                        } else {
                            spanStyle2 = null;
                        }
                        TextLinkStyles a7 = linkAnnotation.a();
                        if (a7 != null) {
                            spanStyle3 = a7.c;
                        } else {
                            spanStyle3 = null;
                        }
                        TextLinkStyles a8 = linkAnnotation.a();
                        if (a8 != null) {
                            spanStyle4 = a8.d;
                        }
                        Object[] objArr = {valueOf, valueOf2, valueOf3, spanStyle, spanStyle2, spanStyle3, spanStyle4};
                        boolean h2 = gapComposer.h(this) | gapComposer.f(range);
                        Object K6 = gapComposer.K();
                        if (h2 || K6 == obj2) {
                            K6 = new g(this, range, linkStateInteractionSourceObserver);
                            gapComposer.g0(K6);
                        }
                        b(objArr, (Function1) K6, gapComposer, (i3 << 6) & 896);
                        z2 = false;
                        gapComposer.p(false);
                    }
                    gapComposer.p(z2);
                } else {
                    c = c2;
                    z2 = z7;
                    gapComposer.W(728345598);
                    gapComposer.p(z2);
                }
                i4++;
                z7 = z2;
                c2 = c;
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new defpackage.d(i, 25, this);
        }
    }

    public final void b(Object[] objArr, Function1 function1, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        int i4;
        int i5;
        int i6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-2083052099);
        if ((i & 48) == 0) {
            if (gapComposer.h(function1)) {
                i6 = 32;
            } else {
                i6 = 16;
            }
            i2 = i6 | i;
        } else {
            i2 = i;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(this)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i2 |= i5;
        }
        gapComposer.U(-358306546, Integer.valueOf(objArr.length));
        boolean z2 = false;
        if (gapComposer.d(objArr.length)) {
            i3 = 4;
        } else {
            i3 = 0;
        }
        int i7 = i2 | i3;
        for (Object obj : objArr) {
            if (gapComposer.h(obj)) {
                i4 = 4;
            } else {
                i4 = 0;
            }
            i7 |= i4;
        }
        gapComposer.p(false);
        if ((i7 & 14) == 0) {
            i7 |= 2;
        }
        if ((i7 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i7 & 1, z)) {
            ArrayList arrayList = new SpreadBuilder(2).a;
            arrayList.add(function1);
            if (objArr != 0) {
                if (objArr instanceof Object[]) {
                    Object[] objArr2 = objArr;
                    if (objArr2.length > 0) {
                        arrayList.ensureCapacity(arrayList.size() + objArr2.length);
                        Collections.addAll(arrayList, objArr2);
                    }
                } else if (objArr instanceof Collection) {
                    arrayList.addAll((Collection) objArr);
                } else if (objArr instanceof Iterable) {
                    Iterator it = ((Iterable) objArr).iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next());
                    }
                } else if (objArr instanceof Iterator) {
                    Iterator it2 = (Iterator) objArr;
                    while (it2.hasNext()) {
                        arrayList.add(it2.next());
                    }
                } else {
                    throw new UnsupportedOperationException("Don't know how to spread " + objArr.getClass());
                }
            }
            Object[] array = arrayList.toArray(new Object[arrayList.size()]);
            boolean h = gapComposer.h(this);
            if ((i7 & 112) == 32) {
                z2 = true;
            }
            boolean z3 = h | z2;
            Object K = gapComposer.K();
            if (z3 || K == Composer.Companion.a) {
                K = new ec(17, this, function1);
                gapComposer.g0(K);
            }
            EffectsKt.d(array, (Function1) K, gapComposer);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(this, objArr, function1, i, 15);
        }
    }
}
