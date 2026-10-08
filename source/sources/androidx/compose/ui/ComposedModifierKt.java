package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComposedModifierKt {
    public static final Modifier a(Modifier modifier, Function3 function3) {
        return modifier.l(new ComposedModifier(function3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kotlin.jvm.functions.Function1] */
    public static final Modifier b(final Composer composer, Modifier modifier) {
        if (modifier.f(new Object())) {
            return modifier;
        }
        ((GapComposer) composer).R(1219399079, 0, null, null);
        Modifier modifier2 = (Modifier) modifier.b(Modifier.Companion.b, new Function2() { // from class: androidx.compose.ui.b
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                Modifier modifier3 = (Modifier) obj;
                Modifier modifier4 = (Modifier.Element) obj2;
                if (modifier4 instanceof ComposedModifier) {
                    Function3 function3 = ((ComposedModifier) modifier4).b;
                    TypeIntrinsics.c(3, function3);
                    Modifier.Companion companion = Modifier.Companion.b;
                    Composer composer2 = Composer.this;
                    modifier4 = ComposedModifierKt.b(composer2, (Modifier) function3.f(companion, composer2, 0));
                }
                return modifier3.l(modifier4);
            }
        });
        ((GapComposer) composer).p(false);
        return modifier2;
    }

    public static final Modifier c(Composer composer, Modifier modifier) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(439770924);
        Modifier b = b(gapComposer, modifier);
        gapComposer.p(false);
        return b;
    }
}
