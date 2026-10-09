package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryImpl$registerProvider$3;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AbstractComposeView;
import defpackage.h;
import defpackage.o2;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewFactoryHolder<T extends View> extends AndroidViewHolder {
    public static final /* synthetic */ int Q = 0;
    public final View K;
    public final NestedScrollDispatcher L;
    public SaveableStateRegistry.Entry M;
    public Function1 N;
    public Function1 O;
    public Function1 P;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ViewFactoryHolder(Context context, Function1 function1, GapComposer.CompositionContextImpl compositionContextImpl, SaveableStateRegistry saveableStateRegistry, int i, Owner owner) {
        super(context, compositionContextImpl, i, r4, r5, owner);
        Object obj;
        View view = (View) function1.b(context);
        NestedScrollDispatcher nestedScrollDispatcher = new NestedScrollDispatcher();
        this.K = view;
        this.L = nestedScrollDispatcher;
        setClipChildren(false);
        String valueOf = String.valueOf(i);
        if (saveableStateRegistry != null) {
            obj = saveableStateRegistry.d(valueOf);
        } else {
            obj = null;
        }
        SparseArray<Parcelable> sparseArray = obj instanceof SparseArray ? (SparseArray) obj : null;
        if (sparseArray != null) {
            view.restoreHierarchyState(sparseArray);
        }
        if (saveableStateRegistry != null) {
            setSavableRegistryEntry(saveableStateRegistry.e(valueOf, new o2(this, 2)));
        }
        h hVar = AndroidView_androidKt.a;
        this.N = hVar;
        this.O = hVar;
        this.P = hVar;
    }

    public static void n(ViewFactoryHolder viewFactoryHolder) {
        viewFactoryHolder.P.b(viewFactoryHolder.K);
        viewFactoryHolder.setSavableRegistryEntry(null);
    }

    private final void setSavableRegistryEntry(SaveableStateRegistry.Entry entry) {
        SaveableStateRegistry.Entry entry2 = this.M;
        if (entry2 != null) {
            ((SaveableStateRegistryImpl$registerProvider$3) entry2).a();
        }
        this.M = entry;
    }

    public final NestedScrollDispatcher getDispatcher() {
        return this.L;
    }

    public final Function1<T, Unit> getReleaseBlock() {
        return this.P;
    }

    public final Function1<T, Unit> getResetBlock() {
        return this.O;
    }

    public /* bridge */ /* synthetic */ AbstractComposeView getSubCompositionView() {
        return null;
    }

    public final Function1<T, Unit> getUpdateBlock() {
        return this.N;
    }

    public final void setReleaseBlock(Function1<? super T, Unit> function1) {
        this.P = function1;
        setRelease(new o2(this, 3));
    }

    public final void setResetBlock(Function1<? super T, Unit> function1) {
        this.O = function1;
        setReset(new o2(this, 4));
    }

    public final void setUpdateBlock(Function1<? super T, Unit> function1) {
        this.N = function1;
        setUpdate(new o2(this, 5));
    }

    public View getViewRoot() {
        return this;
    }
}
