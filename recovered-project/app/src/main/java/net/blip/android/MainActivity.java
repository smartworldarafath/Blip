package net.blip.android;

import android.R;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import defpackage.d4;
import defpackage.va;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlinx.coroutines.BuildersKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MainActivity extends ComponentActivity {
    public static final String G;
    public static final String H;
    public static final String I;
    public static final String J;
    public boolean E;
    public final Lazy F = LazyKt.b(new va(this, 0));

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    static {
        String name = Companion.class.getDeclaringClass().getName();
        G = name.concat(".ACTION_OPEN_GALLERY");
        H = name.concat(".ACTION_OPEN_PEER");
        I = name.concat(".KEY_TRANSFER_ID");
        J = name.concat(".KEY_PEER_ID");
    }

    public final void j(Intent intent) {
        ComposeView composeView;
        Application application = getApplication();
        application.getClass();
        ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(-690947843, true, new d4((App) application, this, intent, this, 3));
        ViewGroup.LayoutParams layoutParams = ComponentActivityKt.a;
        View childAt = ((ViewGroup) getWindow().getDecorView().findViewById(R.id.content)).getChildAt(0);
        if (childAt instanceof ComposeView) {
            composeView = (ComposeView) childAt;
        } else {
            composeView = null;
        }
        if (composeView != null) {
            composeView.setParentCompositionContext(null);
            composeView.setContent(composableLambdaImpl);
            return;
        }
        ComposeView composeView2 = new ComposeView(this);
        composeView2.setParentCompositionContext(null);
        composeView2.setContent(composableLambdaImpl);
        View decorView = getWindow().getDecorView();
        if (ViewTreeLifecycleOwner.a(decorView) == null) {
            decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        }
        if (ViewTreeViewModelStoreOwner.a(decorView) == null) {
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
        }
        if (ViewTreeSavedStateRegistryOwner.a(decorView) == null) {
            decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        }
        setContentView(composeView2, ComponentActivityKt.a);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        String str2;
        boolean z;
        super.onCreate(bundle);
        Logger logger = LoggerKt.a;
        Intent intent = getIntent();
        Intent intent2 = null;
        if (intent != null) {
            str = intent.getAction();
        } else {
            str = null;
        }
        Pair pair = new Pair("intent_action", str);
        Intent intent3 = getIntent();
        if (intent3 != null) {
            str2 = intent3.getType();
        } else {
            str2 = null;
        }
        Pair[] pairArr = {pair, new Pair("intent_type", str2)};
        logger.getClass();
        Logger.h("onCreate", pairArr);
        EdgeToEdge.a(this);
        getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
        if (bundle != null) {
            z = bundle.getBoolean("CURRENT_INTENT_HANDLED");
        } else {
            z = false;
        }
        this.E = z;
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new MainActivity$onCreate$1(this, null), 3);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new MainActivity$onCreate$2(this, null), 3);
        Intent intent4 = getIntent();
        if (intent4 != null && !this.E) {
            intent2 = intent4;
        }
        j(intent2);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        setIntent(intent);
        this.E = false;
        Logger logger = LoggerKt.a;
        Pair[] pairArr = {new Pair("intent_action", intent.getAction()), new Pair("intent_type", intent.getType())};
        logger.getClass();
        Logger.h("onNewIntent", pairArr);
        j(intent);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("CURRENT_INTENT_HANDLED", this.E);
    }
}
