package defpackage;

import android.os.Bundle;
import android.util.Log;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import com.google.android.datatransport.TransportFactory;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.common.base.Supplier;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.datatransport.TransportRegistrar;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.IScope;
import io.sentry.ScopeCallback;
import io.sentry.SentryOptions;
import io.sentry.SentryUUID;
import io.sentry.android.replay.capture.SessionCaptureStrategy;
import io.sentry.kotlin.multiplatform.extensions.a;
import io.sentry.protocol.SentryId;
import io.sentry.util.LazyEvaluator;
import java.io.IOException;
import java.util.NoSuchElementException;
import okhttp3.EventListener;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class fe implements DoubleFunction, Supplier, TextInclusionStrategy, ComponentFactory, EventListener.Factory, VisualTransformation, Continuation, ScopeCallback, SentryOptions.BeforeBreadcrumbCallback, LazyEvaluator.Evaluator {
    public final /* synthetic */ int j;

    public /* synthetic */ fe(int i) {
        this.j = i;
    }

    public static /* synthetic */ void h() {
        throw new IllegalArgumentException();
    }

    public static /* synthetic */ void j(int i, String str) {
        throw new IllegalStateException((str + i).toString());
    }

    public static /* synthetic */ void k(int i, StringBuilder sb) {
        sb.append(i);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public static /* synthetic */ void l(Object obj) {
        throw new IllegalArgumentException(obj.toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2, Object obj3, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        throw new IllegalStateException(sb.toString(), th);
    }

    public static /* synthetic */ void n(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void o(String str) {
        throw new NoSuchElementException(str);
    }

    public static /* synthetic */ void p(String str, Object obj, Object obj2) {
        throw new RuntimeException(str + obj + obj2);
    }

    public static /* synthetic */ void q(String str, Object obj, Object obj2, Object obj3) {
        throw new IOException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void r(String str, Object obj, Throwable th) {
        throw new RuntimeException(str + obj, th);
    }

    public static /* synthetic */ void s(Object obj, String str) {
        throw new IllegalArgumentException((str + obj).toString());
    }

    public static /* synthetic */ void t(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static /* synthetic */ void u(String str, Object obj, Object obj2) {
        throw new IllegalArgumentException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void v(Object obj, String str) {
        throw new IOException(str + obj);
    }

    public static /* synthetic */ void w(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void x(Object obj, String str) {
        throw new IOException(str + obj);
    }

    @Override // androidx.compose.ui.text.TextInclusionStrategy
    public boolean a(Rect rect, Rect rect2) {
        switch (this.j) {
            case KeyModifiers.b /* 10 */:
                return rect.g(rect2);
            default:
                return rect2.a(rect.b());
        }
    }

    @Override // io.sentry.SentryOptions.BeforeBreadcrumbCallback
    public Breadcrumb b(Breadcrumb breadcrumb, Hint hint) {
        breadcrumb.getClass();
        return breadcrumb;
    }

    @Override // io.sentry.util.LazyEvaluator.Evaluator
    public Object c() {
        return SentryUUID.a();
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object d(ComponentContainer componentContainer) {
        TransportFactory lambda$getComponents$0;
        TransportFactory lambda$getComponents$1;
        TransportFactory lambda$getComponents$2;
        switch (this.j) {
            case KeyModifiers.c /* 12 */:
                lambda$getComponents$0 = TransportRegistrar.lambda$getComponents$0(componentContainer);
                return lambda$getComponents$0;
            case 13:
                lambda$getComponents$1 = TransportRegistrar.lambda$getComponents$1(componentContainer);
                return lambda$getComponents$1;
            default:
                lambda$getComponents$2 = TransportRegistrar.lambda$getComponents$2(componentContainer);
                return lambda$getComponents$2;
        }
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    public TransformedText f(AnnotatedString annotatedString) {
        return new TransformedText(annotatedString, OffsetMapping.Companion.a);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object g(Task task) {
        Bundle bundle = (Bundle) task.h();
        if (bundle != null) {
            String string = bundle.getString("registration_id");
            if (string != null) {
                return string;
            }
            String string2 = bundle.getString("unregistered");
            if (string2 != null) {
                return string2;
            }
            String string3 = bundle.getString("error");
            if (!"RST".equals(string3)) {
                if (string3 != null) {
                    k8.j(string3);
                    return null;
                }
                Log.w("FirebaseMessaging", "Unexpected response: " + bundle, new Throwable());
                k8.j("SERVICE_NOT_AVAILABLE");
                return null;
            }
            k8.j("INSTANCE_ID_RESET");
            return null;
        }
        k8.j("SERVICE_NOT_AVAILABLE");
        return null;
    }

    @Override // com.google.common.base.Supplier
    public Object get() {
        throw new IllegalStateException();
    }

    @Override // io.sentry.ScopeCallback
    public void i(IScope iScope) {
        switch (this.j) {
            case 24:
                int i = SessionCaptureStrategy.u;
                iScope.getClass();
                iScope.i(SentryId.k);
                return;
            default:
                iScope.C(new a(3, iScope));
                return;
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double e(double d) {
        return d;
    }
}
