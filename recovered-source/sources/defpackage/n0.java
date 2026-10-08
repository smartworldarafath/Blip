package defpackage;

import android.os.Build;
import android.os.LocaleList;
import android.os.StrictMode;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidViewsHandler;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.os.LocaleListCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class n0 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AndroidComposeView k;

    public /* synthetic */ n0(AndroidComposeView androidComposeView, int i) {
        this.j = i;
        this.k = androidComposeView;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        AndroidViewHolder androidViewHolder;
        Method method;
        int i = this.j;
        int i2 = 0;
        AndroidComposeView androidComposeView = this.k;
        switch (i) {
            case 0:
                AndroidViewsHandler androidViewsHandler = androidComposeView.W;
                if (androidViewsHandler != null) {
                    int childCount = androidViewsHandler.getChildCount();
                    while (i2 < childCount) {
                        View childAt = androidViewsHandler.getChildAt(i2);
                        if (childAt instanceof AndroidViewHolder) {
                            androidViewHolder = (AndroidViewHolder) childAt;
                        } else {
                            androidViewHolder = null;
                        }
                        if (androidViewHolder != null && androidViewHolder.isLayoutRequested()) {
                            androidViewHolder.layout(androidViewHolder.getLeft(), androidViewHolder.getTop(), androidViewHolder.getRight(), androidViewHolder.getBottom());
                        }
                        i2++;
                    }
                }
                return Unit.a;
            case 1:
                Class cls = AndroidComposeView.R0;
                if (Build.VERSION.SDK_INT > 28 && androidComposeView.isAttachedToWindow()) {
                    if (AndroidComposeView.V0 == null) {
                        r rVar = new r(1);
                        AndroidComposeView.V0 = rVar;
                        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
                        try {
                            if (AndroidComposeView.R0 == null) {
                                AndroidComposeView.R0 = Class.forName("android.os.SystemProperties");
                            }
                            if (AndroidComposeView.T0 == null) {
                                StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
                                Class cls2 = AndroidComposeView.R0;
                                if (cls2 != null) {
                                    method = cls2.getDeclaredMethod("addChangeCallback", Runnable.class);
                                } else {
                                    method = null;
                                }
                                AndroidComposeView.T0 = method;
                            }
                            Method method2 = AndroidComposeView.T0;
                            if (method2 != null) {
                                method2.invoke(null, rVar);
                            }
                        } catch (Throwable unused) {
                        }
                        StrictMode.setVmPolicy(vmPolicy);
                    }
                    MutableObjectList mutableObjectList = AndroidComposeView.U0;
                    synchronized (mutableObjectList) {
                        mutableObjectList.g(androidComposeView);
                    }
                }
                return Unit.a;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Boolean bool = (Boolean) ((SnapshotMutableStateImpl) androidComposeView.y).getValue();
                bool.getClass();
                return bool;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Class cls3 = AndroidComposeView.R0;
                LocaleListCompat d = LocaleListCompat.d(androidComposeView.getConfiguration().getLocales());
                if (d.b()) {
                    d = LocaleListCompat.d(LocaleList.getDefault());
                }
                int c = d.c();
                ArrayList arrayList = new ArrayList(c);
                while (i2 < c) {
                    Locale a = d.a(i2);
                    a.getClass();
                    arrayList.add(new androidx.compose.ui.text.intl.Locale(a));
                    i2++;
                }
                return new androidx.compose.ui.text.intl.LocaleList(arrayList);
            default:
                MotionEvent motionEvent = androidComposeView.w0;
                if (motionEvent != null) {
                    boolean contains = CollectionsKt.C(9, 7, 8).contains(Integer.valueOf(motionEvent.getActionMasked()));
                    MotionEvent motionEvent2 = androidComposeView.w0;
                    if (motionEvent2 != null && motionEvent2.getButtonState() == 0) {
                        i2 = 1;
                    }
                    if (contains && i2 != 0) {
                        androidComposeView.x0 = SystemClock.uptimeMillis();
                        androidComposeView.post(androidComposeView.E0);
                    }
                }
                androidComposeView.K0.a();
                return Unit.a;
        }
    }
}
