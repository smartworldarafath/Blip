package defpackage;

import android.view.View;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.compose.ui.viewinterop.AndroidViewHolder_androidKt;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class n2 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ ViewFactoryHolder k;
    public final /* synthetic */ LayoutNode l;

    public /* synthetic */ n2(ViewFactoryHolder viewFactoryHolder, LayoutNode layoutNode, int i) {
        this.j = i;
        this.k = viewFactoryHolder;
        this.l = layoutNode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        final AndroidComposeView androidComposeView;
        WindowInsets r;
        int i = this.j;
        Unit unit = Unit.a;
        final LayoutNode layoutNode = this.l;
        ViewFactoryHolder viewFactoryHolder = this.k;
        switch (i) {
            case 0:
                View view = viewFactoryHolder.k;
                Owner owner = (Owner) obj;
                h hVar = AndroidViewHolder.J;
                if (owner instanceof AndroidComposeView) {
                    androidComposeView = (AndroidComposeView) owner;
                } else {
                    androidComposeView = null;
                }
                if (androidComposeView != null) {
                    androidComposeView.getAndroidViewsHandler$ui().getHolderToLayoutNode().put(viewFactoryHolder, layoutNode);
                    androidComposeView.getAndroidViewsHandler$ui().addView(viewFactoryHolder);
                    androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder().put(layoutNode, viewFactoryHolder);
                    viewFactoryHolder.setImportantForAccessibility(1);
                    ViewCompat.n(viewFactoryHolder, new AccessibilityDelegateCompat() { // from class: androidx.compose.ui.platform.AndroidComposeView$addAndroidView$1
                        /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
                        
                            if (r4.intValue() == r8.getSemanticsOwner().a().f) goto L19;
                         */
                        @Override // androidx.core.view.AccessibilityDelegateCompat
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void d(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                            Integer num;
                            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
                            this.j.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfo);
                            AndroidComposeView androidComposeView2 = AndroidComposeView.this;
                            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = androidComposeView2.F;
                            if (androidComposeViewAccessibilityDelegateCompat.v()) {
                                accessibilityNodeInfo.setVisibleToUser(false);
                            }
                            LayoutNode layoutNode2 = layoutNode;
                            LayoutNode w = layoutNode2.w();
                            while (true) {
                                num = null;
                                if (w != null) {
                                    if (w.O.d(8)) {
                                        break;
                                    } else {
                                        w = w.w();
                                    }
                                } else {
                                    w = null;
                                    break;
                                }
                            }
                            if (w != null) {
                                num = Integer.valueOf(w.k);
                            }
                            if (num != null) {
                            }
                            num = -1;
                            int intValue = num.intValue();
                            accessibilityNodeInfoCompat.b = intValue;
                            AndroidComposeView androidComposeView3 = androidComposeView;
                            accessibilityNodeInfo.setParent(androidComposeView3, intValue);
                            int i2 = layoutNode2.k;
                            int b = androidComposeViewAccessibilityDelegateCompat.K.b(i2);
                            if (b != -1) {
                                AndroidViewHolder b2 = SemanticsUtils_androidKt.b(androidComposeView2.getAndroidViewsHandler$ui(), b);
                                if (b2 != null) {
                                    accessibilityNodeInfo.setTraversalBefore(b2);
                                } else {
                                    accessibilityNodeInfo.setTraversalBefore(androidComposeView3, b);
                                }
                                AndroidComposeView.c(androidComposeView2, i2, accessibilityNodeInfo, androidComposeViewAccessibilityDelegateCompat.M);
                            }
                            int b3 = androidComposeViewAccessibilityDelegateCompat.L.b(i2);
                            if (b3 != -1) {
                                AndroidViewHolder b4 = SemanticsUtils_androidKt.b(androidComposeView2.getAndroidViewsHandler$ui(), b3);
                                if (b4 != null) {
                                    accessibilityNodeInfo.setTraversalAfter(b4);
                                } else {
                                    accessibilityNodeInfo.setTraversalAfter(androidComposeView3, b3);
                                }
                                AndroidComposeView.c(androidComposeView2, i2, accessibilityNodeInfo, androidComposeViewAccessibilityDelegateCompat.N);
                            }
                        }
                    });
                }
                if (view.getParent() != viewFactoryHolder) {
                    viewFactoryHolder.addView(view);
                }
                return unit;
            case 1:
                h hVar2 = AndroidViewHolder.J;
                AndroidViewHolder_androidKt.a(viewFactoryHolder, layoutNode);
                ((AndroidComposeView) viewFactoryHolder.l).M = true;
                int[] iArr = viewFactoryHolder.w;
                int i2 = iArr[0];
                int i3 = iArr[1];
                View view2 = viewFactoryHolder.k;
                view2.getLocationOnScreen(iArr);
                long j = viewFactoryHolder.x;
                long f = ((LayoutCoordinates) obj).f();
                viewFactoryHolder.x = f;
                WindowInsetsCompat windowInsetsCompat = viewFactoryHolder.y;
                if (windowInsetsCompat != null && ((i2 != iArr[0] || i3 != iArr[1] || !IntSize.a(j, f)) && (r = viewFactoryHolder.m(windowInsetsCompat).r()) != null)) {
                    view2.dispatchApplyWindowInsets(r);
                }
                return unit;
            default:
                AndroidViewHolder_androidKt.a(viewFactoryHolder, layoutNode);
                return unit;
        }
    }
}
