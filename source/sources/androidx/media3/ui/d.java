package androidx.media3.ui;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.ArrayList;
import java.util.Iterator;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ PlayerControlViewLayoutManager k;

    public /* synthetic */ d(PlayerControlViewLayoutManager playerControlViewLayoutManager, int i) {
        this.j = i;
        this.k = playerControlViewLayoutManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        int i;
        int i2;
        int i3 = this.j;
        PlayerControlViewLayoutManager playerControlViewLayoutManager = this.k;
        switch (i3) {
            case 0:
                playerControlViewLayoutManager.k();
                return;
            case 1:
                View view = playerControlViewLayoutManager.k;
                ViewGroup viewGroup = playerControlViewLayoutManager.f;
                if (viewGroup != null) {
                    if (playerControlViewLayoutManager.B) {
                        i2 = 0;
                    } else {
                        i2 = 4;
                    }
                    viewGroup.setVisibility(i2);
                }
                if (view != null) {
                    int dimensionPixelSize = playerControlViewLayoutManager.a.getResources().getDimensionPixelSize(R.dimen.exo_styled_progress_margin_bottom);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    if (marginLayoutParams != null) {
                        if (playerControlViewLayoutManager.B) {
                            dimensionPixelSize = 0;
                        }
                        marginLayoutParams.bottomMargin = dimensionPixelSize;
                        view.setLayoutParams(marginLayoutParams);
                    }
                    if (view instanceof DefaultTimeBar) {
                        DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                        Rect rect = defaultTimeBar.j;
                        ValueAnimator valueAnimator = defaultTimeBar.N;
                        if (playerControlViewLayoutManager.B) {
                            if (valueAnimator.isStarted()) {
                                valueAnimator.cancel();
                            }
                            defaultTimeBar.P = true;
                            defaultTimeBar.O = 0.0f;
                            defaultTimeBar.invalidate(rect);
                        } else {
                            int i4 = playerControlViewLayoutManager.A;
                            if (i4 == 1) {
                                if (valueAnimator.isStarted()) {
                                    valueAnimator.cancel();
                                }
                                defaultTimeBar.P = false;
                                defaultTimeBar.O = 0.0f;
                                defaultTimeBar.invalidate(rect);
                            } else if (i4 != 3) {
                                if (valueAnimator.isStarted()) {
                                    valueAnimator.cancel();
                                }
                                defaultTimeBar.P = false;
                                defaultTimeBar.O = 1.0f;
                                defaultTimeBar.invalidate(rect);
                            }
                        }
                    }
                }
                Iterator it = playerControlViewLayoutManager.z.iterator();
                while (it.hasNext()) {
                    View view2 = (View) it.next();
                    if (playerControlViewLayoutManager.B && PlayerControlViewLayoutManager.j(view2)) {
                        i = 4;
                    } else {
                        i = 0;
                    }
                    view2.setVisibility(i);
                }
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ValueAnimator valueAnimator2 = playerControlViewLayoutManager.s;
                View view3 = playerControlViewLayoutManager.l;
                PlayerControlView playerControlView = playerControlViewLayoutManager.a;
                ViewGroup viewGroup2 = playerControlViewLayoutManager.h;
                ViewGroup viewGroup3 = playerControlViewLayoutManager.g;
                if (viewGroup3 != null && viewGroup2 != null) {
                    int width = (playerControlView.getWidth() - playerControlView.getPaddingLeft()) - playerControlView.getPaddingRight();
                    while (viewGroup2.getChildCount() > 1) {
                        int childCount = viewGroup2.getChildCount() - 2;
                        View childAt = viewGroup2.getChildAt(childCount);
                        viewGroup2.removeViewAt(childCount);
                        viewGroup3.addView(childAt, 0);
                    }
                    if (view3 != null) {
                        view3.setVisibility(8);
                    }
                    int c = PlayerControlViewLayoutManager.c(playerControlViewLayoutManager.j);
                    int childCount2 = viewGroup3.getChildCount() - 1;
                    for (int i5 = 0; i5 < childCount2; i5++) {
                        c += PlayerControlViewLayoutManager.c(viewGroup3.getChildAt(i5));
                    }
                    if (c > width) {
                        if (view3 != null) {
                            view3.setVisibility(0);
                            c += PlayerControlViewLayoutManager.c(view3);
                        }
                        ArrayList arrayList = new ArrayList();
                        for (int i6 = 0; i6 < childCount2; i6++) {
                            View childAt2 = viewGroup3.getChildAt(i6);
                            c -= PlayerControlViewLayoutManager.c(childAt2);
                            arrayList.add(childAt2);
                            if (c <= width) {
                                if (arrayList.isEmpty()) {
                                    viewGroup3.removeViews(0, arrayList.size());
                                    for (int i7 = 0; i7 < arrayList.size(); i7++) {
                                        viewGroup2.addView((View) arrayList.get(i7), viewGroup2.getChildCount() - 1);
                                    }
                                    return;
                                }
                                return;
                            }
                        }
                        if (arrayList.isEmpty()) {
                        }
                    } else {
                        ViewGroup viewGroup4 = playerControlViewLayoutManager.i;
                        if (viewGroup4 != null && viewGroup4.getVisibility() == 0 && !valueAnimator2.isStarted()) {
                            playerControlViewLayoutManager.r.cancel();
                            valueAnimator2.start();
                            return;
                        }
                        return;
                    }
                } else {
                    return;
                }
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                playerControlViewLayoutManager.o.start();
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                playerControlViewLayoutManager.n.start();
                return;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                playerControlViewLayoutManager.m.start();
                playerControlViewLayoutManager.e(2000L, playerControlViewLayoutManager.v);
                return;
            default:
                playerControlViewLayoutManager.i(2);
                return;
        }
    }
}
