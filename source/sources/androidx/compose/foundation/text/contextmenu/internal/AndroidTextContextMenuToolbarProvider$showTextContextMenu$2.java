package androidx.compose.foundation.text.contextmenu.internal;

import android.os.Handler;
import android.os.Looper;
import android.view.ActionMode;
import android.view.View;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.e;
import defpackage.g2;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider$showTextContextMenu$2", f = "AndroidTextContextMenuToolbarProvider.android.kt", l = {183}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class AndroidTextContextMenuToolbarProvider$showTextContextMenu$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ AndroidTextContextMenuToolbarProvider o;
    public final /* synthetic */ TextContextMenuDataProvider p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidTextContextMenuToolbarProvider$showTextContextMenu$2(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, TextContextMenuDataProvider textContextMenuDataProvider, Continuation continuation) {
        super(1, continuation);
        this.o = androidTextContextMenuToolbarProvider;
        this.p = textContextMenuDataProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return new AndroidTextContextMenuToolbarProvider$showTextContextMenu$2(this.o, this.p, (Continuation) obj).v(Unit.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v6, types: [androidx.compose.foundation.text.contextmenu.internal.b] */
    /* JADX WARN: Type inference failed for: r9v8, types: [androidx.compose.foundation.text.contextmenu.internal.TextActionModeCallback] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Looper looper;
        Looper looper2;
        ?? r9;
        Looper myLooper;
        Handler handler;
        Looper looper3;
        final AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = this.o;
        SnapshotStateObserver snapshotStateObserver = androidTextContextMenuToolbarProvider.e;
        View view = androidTextContextMenuToolbarProvider.a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                final AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl textContextMenuSessionImpl = new AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl();
                TextContextMenuDataProvider textContextMenuDataProvider = this.p;
                final AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl textActionModeCallbackImpl = new AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl(textContextMenuSessionImpl, new g2(androidTextContextMenuToolbarProvider, textContextMenuDataProvider, 0), new g2(androidTextContextMenuToolbarProvider, textContextMenuDataProvider, 1), view);
                Function1 function1 = androidTextContextMenuToolbarProvider.b;
                if (function1 != null && (r9 = (TextActionModeCallback) function1.b(textActionModeCallbackImpl)) != 0) {
                    textActionModeCallbackImpl = r9;
                }
                Looper myLooper2 = Looper.myLooper();
                Handler handler2 = view.getHandler();
                if (handler2 != null) {
                    looper2 = handler2.getLooper();
                } else {
                    looper2 = null;
                }
                if (myLooper2 != looper2) {
                    b bVar = androidTextContextMenuToolbarProvider.i;
                    b bVar2 = bVar;
                    if (bVar == null) {
                        ?? r92 = new Runnable() { // from class: androidx.compose.foundation.text.contextmenu.internal.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider2 = AndroidTextContextMenuToolbarProvider.this;
                                ActionMode startActionMode = androidTextContextMenuToolbarProvider2.a.startActionMode(new FloatingTextActionModeCallback(textActionModeCallbackImpl), 1);
                                androidTextContextMenuToolbarProvider2.h = startActionMode;
                                if (startActionMode == null) {
                                    textContextMenuSessionImpl.close();
                                }
                            }
                        };
                        androidTextContextMenuToolbarProvider.i = r92;
                        bVar2 = r92;
                    }
                    view.post(bVar2);
                } else {
                    ActionMode startActionMode = view.startActionMode(new FloatingTextActionModeCallback(textActionModeCallbackImpl), 1);
                    if (startActionMode == null) {
                        return unit;
                    }
                    androidTextContextMenuToolbarProvider.h = startActionMode;
                }
                this.n = 1;
                Object i2 = textContextMenuSessionImpl.a.i(this);
                if (i2 != coroutineSingletons) {
                    i2 = unit;
                }
                if (i2 == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            if (handler != null) {
                looper3 = handler.getLooper();
            } else {
                looper3 = null;
            }
            if (myLooper != looper3) {
                Runnable runnable = androidTextContextMenuToolbarProvider.j;
                if (runnable == null) {
                    runnable = new e(2, androidTextContextMenuToolbarProvider);
                    androidTextContextMenuToolbarProvider.j = runnable;
                }
                view.post(runnable);
            } else {
                ActionMode actionMode = androidTextContextMenuToolbarProvider.h;
                if (actionMode != null) {
                    actionMode.finish();
                }
            }
            b bVar3 = androidTextContextMenuToolbarProvider.i;
            if (bVar3 != null) {
                view.removeCallbacks(bVar3);
            }
            androidTextContextMenuToolbarProvider.h = null;
            return unit;
        } finally {
            snapshotStateObserver.a();
            Looper myLooper3 = Looper.myLooper();
            Handler handler3 = view.getHandler();
            if (handler3 != null) {
                looper = handler3.getLooper();
            } else {
                looper = null;
            }
            if (myLooper3 != looper) {
                Runnable runnable2 = androidTextContextMenuToolbarProvider.j;
                if (runnable2 == null) {
                    runnable2 = new e(2, androidTextContextMenuToolbarProvider);
                    androidTextContextMenuToolbarProvider.j = runnable2;
                }
                view.post(runnable2);
            } else {
                ActionMode actionMode2 = androidTextContextMenuToolbarProvider.h;
                if (actionMode2 != null) {
                    actionMode2.finish();
                }
            }
            b bVar4 = androidTextContextMenuToolbarProvider.i;
            if (bVar4 != null) {
                view.removeCallbacks(bVar4);
            }
            androidTextContextMenuToolbarProvider.h = null;
        }
    }
}
