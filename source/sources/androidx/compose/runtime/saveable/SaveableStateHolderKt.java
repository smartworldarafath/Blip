package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SaveableStateHolderKt {
    public static final SaveableStateHolder a(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(1967007413);
        Object[] objArr = new Object[0];
        Object K = gapComposer.K();
        if (K == Composer.Companion.a) {
            K = new Object();
            gapComposer.g0(K);
        }
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) RememberSaveableKt.d(objArr, SaveableStateHolderImpl.n, (Function0) K, gapComposer, 384);
        saveableStateHolderImpl.l = (SaveableStateRegistry) gapComposer.j(SaveableStateRegistryKt.a);
        gapComposer.p(false);
        return saveableStateHolderImpl;
    }
}
