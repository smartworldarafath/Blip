package androidx.compose.ui.platform;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.platform.PlatformTextInputModifierNodeKt", f = "PlatformTextInputModifierNode.kt", l = {134}, m = "establishTextInputSession", v = 1)
/* loaded from: classes.dex */
public final class PlatformTextInputModifierNodeKt$establishTextInputSession$1 extends ContinuationImpl {
    public /* synthetic */ Object m;
    public int n;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.n |= Integer.MIN_VALUE;
        PlatformTextInputModifierNodeKt.a(null, null, this);
        return CoroutineSingletons.j;
    }
}
