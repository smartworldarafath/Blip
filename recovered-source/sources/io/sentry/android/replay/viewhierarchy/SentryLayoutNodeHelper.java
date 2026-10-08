package io.sentry.android.replay.viewhierarchy;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import defpackage.k8;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SentryLayoutNodeHelper {
    public static Boolean a;
    public static Fallback b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Fallback {
        public final Method a;
        public final Method b;

        public Fallback(Method method, Method method2) {
            this.a = method;
            this.b = method2;
        }
    }

    public static Fallback a() {
        Method method;
        Fallback fallback = b;
        if (fallback != null) {
            return fallback;
        }
        Method method2 = null;
        try {
            method = LayoutNode.class.getDeclaredMethod("getChildren$ui_release", null);
            method.setAccessible(true);
        } catch (NoSuchMethodException unused) {
            method = null;
        }
        try {
            Method declaredMethod = LayoutNode.class.getDeclaredMethod("getOuterCoordinator$ui_release", null);
            declaredMethod.setAccessible(true);
            method2 = declaredMethod;
        } catch (NoSuchMethodException unused2) {
        }
        Fallback fallback2 = new Fallback(method, method2);
        b = fallback2;
        return fallback2;
    }

    public static boolean b(LayoutNode layoutNode) {
        NodeChain nodeChain = layoutNode.O;
        Boolean bool = a;
        Boolean bool2 = Boolean.FALSE;
        if (Intrinsics.a(bool, bool2)) {
            return nodeChain.d.m1();
        }
        if (Intrinsics.a(bool, Boolean.TRUE)) {
            Method method = a().b;
            method.getClass();
            Object invoke = method.invoke(layoutNode, null);
            invoke.getClass();
            return ((NodeCoordinator) invoke).m1();
        }
        if (bool == null) {
            try {
                boolean m1 = nodeChain.d.m1();
                a = bool2;
                return m1;
            } catch (NoSuchMethodError unused) {
                a = Boolean.TRUE;
                Method method2 = a().b;
                method2.getClass();
                Object invoke2 = method2.invoke(layoutNode, null);
                invoke2.getClass();
                return ((NodeCoordinator) invoke2).m1();
            }
        }
        k8.e();
        return false;
    }
}
