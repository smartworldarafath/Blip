package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DraggableKt {
    public static final Function3 a = new SuspendLambda(3, null);
    public static final Function3 b = new SuspendLambda(3, null);

    public static Modifier a(Modifier modifier, DraggableState draggableState, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, Function3 function3, boolean z3) {
        Orientation orientation = Orientation.j;
        return modifier.l(new DraggableElement(draggableState, z, mutableInteractionSource, z2, a, function3, z3));
    }

    public static final long b(long j) {
        float b2;
        float f = 0.0f;
        if (Float.isNaN(Velocity.b(j))) {
            b2 = 0.0f;
        } else {
            b2 = Velocity.b(j);
        }
        if (!Float.isNaN(Velocity.c(j))) {
            f = Velocity.c(j);
        }
        return VelocityKt.a(b2, f);
    }
}
