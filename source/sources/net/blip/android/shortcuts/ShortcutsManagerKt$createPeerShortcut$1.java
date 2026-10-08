package net.blip.android.shortcuts;

import androidx.activity.ComponentActivity;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.blip.libblip.Peer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.shortcuts.ShortcutsManagerKt", f = "ShortcutsManager.kt", l = {234}, m = "createPeerShortcut", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class ShortcutsManagerKt$createPeerShortcut$1 extends ContinuationImpl {
    public ComponentActivity m;
    public Peer n;
    public /* synthetic */ Object o;
    public int p;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.o = obj;
        this.p |= Integer.MIN_VALUE;
        return ShortcutsManagerKt.a(null, null, this);
    }
}
