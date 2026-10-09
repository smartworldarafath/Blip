package androidx.compose.ui.platform;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.CompositionLocalMapKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.Owner;
import defpackage.f7;
import defpackage.u2;
import defpackage.vc;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PlatformTextInputModifierNodeKt {
    public static final StaticProvidableCompositionLocal a = new CompositionLocal(new vc(4));

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(PlatformTextInputModifierNode platformTextInputModifierNode, Function2 function2, ContinuationImpl continuationImpl) {
        PlatformTextInputModifierNodeKt$establishTextInputSession$1 platformTextInputModifierNodeKt$establishTextInputSession$1;
        int i;
        if (continuationImpl instanceof PlatformTextInputModifierNodeKt$establishTextInputSession$1) {
            PlatformTextInputModifierNodeKt$establishTextInputSession$1 platformTextInputModifierNodeKt$establishTextInputSession$12 = (PlatformTextInputModifierNodeKt$establishTextInputSession$1) continuationImpl;
            int i2 = platformTextInputModifierNodeKt$establishTextInputSession$12.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                platformTextInputModifierNodeKt$establishTextInputSession$12.n = i2 - Integer.MIN_VALUE;
                platformTextInputModifierNodeKt$establishTextInputSession$1 = platformTextInputModifierNodeKt$establishTextInputSession$12;
                Object obj = platformTextInputModifierNodeKt$establishTextInputSession$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = platformTextInputModifierNodeKt$establishTextInputSession$1.n;
                if (i == 0) {
                    if (i != 1) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return;
                    } else {
                        ResultKt.b(obj);
                        f7.h();
                        return;
                    }
                }
                ResultKt.b(obj);
                if (((Modifier.Node) platformTextInputModifierNode).j.w) {
                    Owner h = DelegatableNodeKt.h(platformTextInputModifierNode);
                    PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) DelegatableNodeKt.g(platformTextInputModifierNode).K;
                    persistentCompositionLocalHashMap.getClass();
                    if (CompositionLocalMapKt.a(persistentCompositionLocalHashMap, a) == null) {
                        platformTextInputModifierNodeKt$establishTextInputSession$1.n = 1;
                        b(h, function2, platformTextInputModifierNodeKt$establishTextInputSession$1);
                        return;
                    } else {
                        io.sentry.d.i();
                        return;
                    }
                }
                u2.g("establishTextInputSession called from an unattached node");
                return;
            }
        }
        platformTextInputModifierNodeKt$establishTextInputSession$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = platformTextInputModifierNodeKt$establishTextInputSession$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = platformTextInputModifierNodeKt$establishTextInputSession$1.n;
        if (i == 0) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(Owner owner, Function2 function2, ContinuationImpl continuationImpl) {
        PlatformTextInputModifierNodeKt$interceptedTextInputSession$1 platformTextInputModifierNodeKt$interceptedTextInputSession$1;
        int i;
        if (continuationImpl instanceof PlatformTextInputModifierNodeKt$interceptedTextInputSession$1) {
            PlatformTextInputModifierNodeKt$interceptedTextInputSession$1 platformTextInputModifierNodeKt$interceptedTextInputSession$12 = (PlatformTextInputModifierNodeKt$interceptedTextInputSession$1) continuationImpl;
            int i2 = platformTextInputModifierNodeKt$interceptedTextInputSession$12.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                platformTextInputModifierNodeKt$interceptedTextInputSession$12.n = i2 - Integer.MIN_VALUE;
                platformTextInputModifierNodeKt$interceptedTextInputSession$1 = platformTextInputModifierNodeKt$interceptedTextInputSession$12;
                Object obj = platformTextInputModifierNodeKt$interceptedTextInputSession$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = platformTextInputModifierNodeKt$interceptedTextInputSession$1.n;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return;
                        } else {
                            ResultKt.b(obj);
                            f7.h();
                            return;
                        }
                    }
                    ResultKt.b(obj);
                    f7.h();
                    return;
                }
                ResultKt.b(obj);
                platformTextInputModifierNodeKt$interceptedTextInputSession$1.n = 1;
                ((AndroidComposeView) owner).J(function2, platformTextInputModifierNodeKt$interceptedTextInputSession$1);
                return;
            }
        }
        platformTextInputModifierNodeKt$interceptedTextInputSession$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = platformTextInputModifierNodeKt$interceptedTextInputSession$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = platformTextInputModifierNodeKt$interceptedTextInputSession$1.n;
        if (i == 0) {
        }
    }
}
