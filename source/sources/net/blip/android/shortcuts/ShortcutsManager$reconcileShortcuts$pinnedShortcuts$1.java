package net.blip.android.shortcuts;

import android.content.pm.ShortcutManager;
import android.os.Build;
import androidx.activity.ComponentActivity;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.shortcuts.ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1", f = "ShortcutsManager.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<ShortcutInfoCompat>>, Object> {
    public final /* synthetic */ ShortcutsManager n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1(ShortcutsManager shortcutsManager, Continuation continuation) {
        super(2, continuation);
        this.n = shortcutsManager;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1(this.n, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        List shortcuts;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        ComponentActivity componentActivity = this.n.a;
        if (Build.VERSION.SDK_INT >= 30) {
            shortcuts = ((ShortcutManager) componentActivity.getSystemService(ShortcutManager.class)).getShortcuts(4);
            return ShortcutInfoCompat.a(componentActivity, shortcuts);
        }
        ShortcutManager shortcutManager = (ShortcutManager) componentActivity.getSystemService(ShortcutManager.class);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(shortcutManager.getPinnedShortcuts());
        return ShortcutInfoCompat.a(componentActivity, arrayList);
    }
}
