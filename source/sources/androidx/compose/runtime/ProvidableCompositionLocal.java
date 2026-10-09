package androidx.compose.runtime;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProvidableCompositionLocal<T> extends CompositionLocal<T> {
    public abstract ProvidedValue b(Object obj);

    public final ProvidedValue c(Function1 function1) {
        return new ProvidedValue(this, null, false, null, function1, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0034, code lost:
    
        if (r2 != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0036, code lost:
    
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0042, code lost:
    
        if (r2 == r1) goto L17;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ValueHolder d(ProvidedValue providedValue, ValueHolder valueHolder) {
        DynamicValueHolder dynamicValueHolder;
        DynamicValueHolder dynamicValueHolder2 = null;
        if (valueHolder instanceof DynamicValueHolder) {
            if (providedValue.e) {
                dynamicValueHolder2 = (DynamicValueHolder) valueHolder;
                ((SnapshotMutableStateImpl) dynamicValueHolder2.a).setValue(providedValue.a());
            }
        } else if (valueHolder instanceof StaticValueHolder) {
            if ((providedValue.b || providedValue.f != null) && !providedValue.e) {
                StaticValueHolder staticValueHolder = (StaticValueHolder) valueHolder;
                boolean a = Intrinsics.a(providedValue.a(), staticValueHolder.a);
                dynamicValueHolder = staticValueHolder;
            }
        } else if (valueHolder instanceof ComputedValueHolder) {
            Function1 function1 = providedValue.d;
            ComputedValueHolder computedValueHolder = (ComputedValueHolder) valueHolder;
            Function1 function12 = computedValueHolder.a;
            dynamicValueHolder = computedValueHolder;
        }
        if (dynamicValueHolder2 == null) {
            if (providedValue.e) {
                Object obj = providedValue.f;
                SnapshotMutationPolicy snapshotMutationPolicy = providedValue.c;
                if (snapshotMutationPolicy == null) {
                    snapshotMutationPolicy = StructuralEqualityPolicy.a;
                }
                return new DynamicValueHolder(new SnapshotMutableStateImpl(obj, snapshotMutationPolicy));
            }
            Function1 function13 = providedValue.d;
            if (function13 != null) {
                return new ComputedValueHolder(function13);
            }
            return new StaticValueHolder(providedValue.a());
        }
        return dynamicValueHolder2;
    }
}
