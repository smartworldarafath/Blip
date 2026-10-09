package net.blip.android.shortcuts;

import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.blip.libblip.frontend.State;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.shortcuts.ShortcutsManager", f = "ShortcutsManager.kt", l = {66, 97}, m = "reconcileShortcuts", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class ShortcutsManager$reconcileShortcuts$1 extends ContinuationImpl {
    public State m;
    public String n;
    public List o;
    public List p;
    public Set q;
    public Object r;
    public Map s;
    public Iterator t;
    public int u;
    public /* synthetic */ Object v;
    public final /* synthetic */ ShortcutsManager w;
    public int x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortcutsManager$reconcileShortcuts$1(ShortcutsManager shortcutsManager, Continuation continuation) {
        super(continuation);
        this.w = shortcutsManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.v = obj;
        this.x |= Integer.MIN_VALUE;
        return ShortcutsManager.a(this.w, null, this);
    }
}
