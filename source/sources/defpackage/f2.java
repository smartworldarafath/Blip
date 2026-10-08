package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.view.ActionMode;
import android.view.View;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.p;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f2 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AndroidTextContextMenuToolbarProvider k;

    public /* synthetic */ f2(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, int i) {
        this.j = i;
        this.k = androidTextContextMenuToolbarProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Looper looper;
        int i = this.j;
        Unit unit = Unit.a;
        final AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = this.k;
        switch (i) {
            case 0:
                Function0 function0 = (Function0) obj;
                View view = androidTextContextMenuToolbarProvider.a;
                Handler handler = view.getHandler();
                if (handler != null) {
                    looper = handler.getLooper();
                } else {
                    looper = null;
                }
                if (looper == Looper.myLooper()) {
                    function0.a();
                } else {
                    Handler handler2 = view.getHandler();
                    if (handler2 != null) {
                        handler2.post(new q0(2, function0));
                    }
                }
                return unit;
            case 1:
                ActionMode actionMode = androidTextContextMenuToolbarProvider.h;
                if (actionMode != null) {
                    actionMode.invalidate();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ActionMode actionMode2 = androidTextContextMenuToolbarProvider.h;
                if (actionMode2 != null) {
                    actionMode2.invalidateContentRect();
                }
                return unit;
            default:
                SnapshotStateObserver snapshotStateObserver = androidTextContextMenuToolbarProvider.e;
                snapshotStateObserver.h = Snapshot.Companion.d(snapshotStateObserver.d);
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt$platformTextContextMenuToolbarProvider$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider2 = AndroidTextContextMenuToolbarProvider.this;
                        SnapshotStateObserver snapshotStateObserver2 = androidTextContextMenuToolbarProvider2.e;
                        p pVar = snapshotStateObserver2.h;
                        if (pVar != null) {
                            pVar.a();
                        }
                        snapshotStateObserver2.a();
                        ActionMode actionMode3 = androidTextContextMenuToolbarProvider2.h;
                        if (actionMode3 != null) {
                            actionMode3.finish();
                        }
                        androidTextContextMenuToolbarProvider2.h = null;
                    }
                };
        }
    }
}
