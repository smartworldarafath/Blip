package net.blip.android;

import android.app.Activity;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController;
import java.util.ArrayList;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import net.blip.libblip.PeerId;
import net.blip.libblip.frontend.State;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.MainActivityKt", f = "MainActivity.kt", l = {362}, m = "handleInboundShare", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class MainActivityKt$handleInboundShare$1 extends ContinuationImpl {
    public Activity m;
    public State n;
    public Function1 o;
    public PeerId p;
    public ArrayList q;
    public ArrayList r;
    public NavController s;
    public /* synthetic */ Object t;
    public int u;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.t = obj;
        this.u |= Integer.MIN_VALUE;
        return MainActivityKt.c(null, null, null, null, null, null, null, null, this);
    }
}
