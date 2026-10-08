package io.sentry.android.replay.util;

import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.SentryMaskingOptions;
import io.sentry.android.replay.viewhierarchy.ComposeViewHierarchyNode;
import io.sentry.android.replay.viewhierarchy.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ViewsKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(View view, ViewHierarchyNode viewHierarchyNode, SentryMaskingOptions sentryMaskingOptions, ILogger iLogger, List list) {
        Owner owner;
        LayoutNode root;
        sentryMaskingOptions.getClass();
        iLogger.getClass();
        if (view instanceof ViewGroup) {
            Lazy lazy = ComposeViewHierarchyNode.a;
            if (StringsKt.i(view.getClass().getName(), "AndroidComposeView", false)) {
                try {
                    if (view instanceof Owner) {
                        owner = (Owner) view;
                    } else {
                        owner = null;
                    }
                    if (owner != null && (root = owner.getRoot()) != null) {
                        ComposeViewHierarchyNode.b(root, viewHierarchyNode, true, sentryMaskingOptions, iLogger);
                        return;
                    }
                } catch (Throwable th) {
                    iLogger.a(SentryLevel.ERROR, th, "Error traversing Compose tree. Most likely you're using an unsupported version of\nandroidx.compose.ui:ui. The minimum supported version is 1.5.0. If it's a newer\nversion, please open a github issue with the version you're using, so we can add\nsupport for it.", new Object[0]);
                }
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() == 0) {
                return;
            }
            ArrayList arrayList = new ArrayList(viewGroup.getChildCount());
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt != null) {
                    viewGroup.indexOfChild(childAt);
                    ViewHierarchyNode a = ViewHierarchyNode.Companion.a(childAt, viewHierarchyNode, sentryMaskingOptions);
                    arrayList.add(a);
                    if (list != null && (a instanceof ViewHierarchyNode.SurfaceViewHierarchyNode) && a.e) {
                        list.add(a);
                    }
                    a(childAt, a, sentryMaskingOptions, iLogger, list);
                }
            }
            viewHierarchyNode.g = arrayList;
        }
    }
}
