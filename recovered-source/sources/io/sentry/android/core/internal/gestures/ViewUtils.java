package io.sentry.android.core.internal.gestures;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ScrollView;
import androidx.core.view.ScrollingView;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.internal.util.ClassUtil;
import io.sentry.internal.gestures.GestureTargetLocator;
import io.sentry.internal.gestures.UiElement;
import java.util.LinkedList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ViewUtils {
    public static final int[] a = new int[2];

    public static UiElement a(SentryAndroidOptions sentryAndroidOptions, View view, float f, float f2, UiElement.Type type) {
        boolean isAssignableFrom;
        boolean z;
        UiElement uiElement;
        List<GestureTargetLocator> gestureTargetLocators = sentryAndroidOptions.getGestureTargetLocators();
        LinkedList linkedList = new LinkedList();
        linkedList.add(view);
        UiElement uiElement2 = null;
        while (linkedList.size() > 0) {
            View view2 = (View) linkedList.poll();
            if (view2 != null) {
                int[] iArr = a;
                view2.getLocationOnScreen(iArr);
                int i = iArr[0];
                int i2 = iArr[1];
                int width = view2.getWidth();
                int height = view2.getHeight();
                if (f >= i && f <= i + width && f2 >= i2 && f2 <= i2 + height) {
                    if (view2 instanceof ViewGroup) {
                        ViewGroup viewGroup = (ViewGroup) view2;
                        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                            linkedList.add(viewGroup.getChildAt(i3));
                        }
                    }
                    for (int i4 = 0; i4 < gestureTargetLocators.size(); i4++) {
                        AndroidViewGestureTargetLocator androidViewGestureTargetLocator = (AndroidViewGestureTargetLocator) gestureTargetLocators.get(i4);
                        androidViewGestureTargetLocator.getClass();
                        if (type == UiElement.Type.CLICKABLE && view2.isClickable() && view2.getVisibility() == 0) {
                            try {
                                uiElement = new UiElement(view2, ClassUtil.a(view2), b(view2));
                            } catch (Resources.NotFoundException unused) {
                            }
                        } else {
                            if (type == UiElement.Type.SCROLLABLE) {
                                if (!((Boolean) androidViewGestureTargetLocator.a.a()).booleanValue()) {
                                    isAssignableFrom = false;
                                } else {
                                    isAssignableFrom = ScrollingView.class.isAssignableFrom(view2.getClass());
                                }
                                if ((isAssignableFrom || AbsListView.class.isAssignableFrom(view2.getClass()) || ScrollView.class.isAssignableFrom(view2.getClass())) && view2.getVisibility() == 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (z) {
                                    uiElement = new UiElement(view2, ClassUtil.a(view2), b(view2));
                                }
                            }
                            uiElement = null;
                        }
                        if (uiElement != null) {
                            if (type == UiElement.Type.CLICKABLE) {
                                uiElement2 = uiElement;
                            } else if (type == UiElement.Type.SCROLLABLE) {
                                return uiElement;
                            }
                        }
                    }
                }
            }
        }
        return uiElement2;
    }

    public static String b(View view) {
        int id = view.getId();
        if (id != -1 && (((-16777216) & id) != 0 || (16777215 & id) == 0)) {
            Resources resources = view.getContext().getResources();
            if (resources != null) {
                return resources.getResourceEntryName(id);
            }
            return "";
        }
        throw new Resources.NotFoundException();
    }
}
