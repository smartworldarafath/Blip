package defpackage;

import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.activity.ComponentActivity;
import androidx.activity.FullyDrawnReporter;
import androidx.activity.OnBackPressedDispatcher;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.SavedStateViewModelFactory;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f5 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ ComponentActivity k;

    public /* synthetic */ f5(ComponentActivity componentActivity, int i) {
        this.j = i;
        this.k = componentActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, androidx.navigationevent.NavigationEventInput] */
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        Bundle bundle;
        int i = this.j;
        int i2 = 0;
        ComponentActivity componentActivity = this.k;
        switch (i) {
            case 0:
                int i3 = ComponentActivity.D;
                componentActivity.reportFullyDrawn();
                return Unit.a;
            case 1:
                return new FullyDrawnReporter(componentActivity.o, new f5(componentActivity, i2));
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                int i4 = ComponentActivity.D;
                ?? obj = new Object();
                componentActivity.b().b(obj);
                return obj;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                int i5 = ComponentActivity.D;
                Application application = componentActivity.getApplication();
                if (componentActivity.getIntent() != null) {
                    bundle = componentActivity.getIntent().getExtras();
                } else {
                    bundle = null;
                }
                return new SavedStateViewModelFactory(application, componentActivity, bundle);
            default:
                int i6 = ComponentActivity.D;
                OnBackPressedDispatcher onBackPressedDispatcher = new OnBackPressedDispatcher(new e5(componentActivity, 0));
                if (Build.VERSION.SDK_INT >= 33) {
                    if (!Intrinsics.a(Looper.myLooper(), Looper.getMainLooper())) {
                        new Handler(Looper.getMainLooper()).post(new f3(3, componentActivity, onBackPressedDispatcher));
                    } else {
                        componentActivity.j.a(new g5(i2, onBackPressedDispatcher, componentActivity));
                    }
                }
                return onBackPressedDispatcher;
        }
    }
}
