package androidx.media3.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.ui.PlayerControlView;
import java.util.ArrayList;
import java.util.Iterator;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlayerControlViewLayoutManager {
    public boolean B;
    public boolean C;
    public final PlayerControlView a;
    public final View b;
    public final ViewGroup c;
    public final ViewGroup d;
    public final ViewGroup e;
    public final ViewGroup f;
    public final ViewGroup g;
    public final ViewGroup h;
    public final ViewGroup i;
    public final ViewGroup j;
    public final View k;
    public final View l;
    public final AnimatorSet m;
    public final AnimatorSet n;
    public final AnimatorSet o;
    public final AnimatorSet p;
    public final AnimatorSet q;
    public final ValueAnimator r;
    public final ValueAnimator s;
    public final d t;
    public final d u;
    public final d v = new d(this, 4);
    public final d w = new d(this, 5);
    public final d x = new d(this, 6);
    public final f y = new View.OnLayoutChangeListener() { // from class: androidx.media3.ui.f
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9;
            int height;
            int i10;
            int height2;
            boolean z;
            PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
            PlayerControlView playerControlView = playerControlViewLayoutManager.a;
            int width = (playerControlView.getWidth() - playerControlView.getPaddingLeft()) - playerControlView.getPaddingRight();
            int height3 = (playerControlView.getHeight() - playerControlView.getPaddingBottom()) - playerControlView.getPaddingTop();
            ViewGroup viewGroup = playerControlViewLayoutManager.d;
            int c = PlayerControlViewLayoutManager.c(viewGroup);
            boolean z2 = false;
            if (viewGroup != null) {
                i9 = viewGroup.getPaddingRight() + viewGroup.getPaddingLeft();
            } else {
                i9 = 0;
            }
            int i11 = c - i9;
            if (viewGroup == null) {
                height = 0;
            } else {
                height = viewGroup.getHeight();
                ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    height += marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                }
            }
            if (viewGroup != null) {
                i10 = viewGroup.getPaddingBottom() + viewGroup.getPaddingTop();
            } else {
                i10 = 0;
            }
            int i12 = height - i10;
            int max = Math.max(i11, PlayerControlViewLayoutManager.c(playerControlViewLayoutManager.j) + PlayerControlViewLayoutManager.c(playerControlViewLayoutManager.l));
            ViewGroup viewGroup2 = playerControlViewLayoutManager.e;
            if (viewGroup2 == null) {
                height2 = 0;
            } else {
                height2 = viewGroup2.getHeight();
                ViewGroup.LayoutParams layoutParams2 = viewGroup2.getLayoutParams();
                if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                    height2 += marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
                }
            }
            int i13 = 2;
            int i14 = (height2 * 2) + i12;
            int i15 = 1;
            if (width > max && height3 > i14) {
                z = false;
            } else {
                z = true;
            }
            if (playerControlViewLayoutManager.B != z) {
                playerControlViewLayoutManager.B = z;
                view.post(new d(playerControlViewLayoutManager, i15));
            }
            if (i3 - i != i7 - i5) {
                z2 = true;
            }
            if (!playerControlViewLayoutManager.B && z2) {
                view.post(new d(playerControlViewLayoutManager, i13));
            }
        }
    };
    public boolean D = true;
    public int A = 0;
    public final ArrayList z = new ArrayList();

    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.media3.ui.f] */
    public PlayerControlViewLayoutManager(final PlayerControlView playerControlView) {
        this.a = playerControlView;
        final int i = 0;
        this.t = new d(this, i);
        final int i2 = 3;
        this.u = new d(this, i2);
        final int i3 = 1;
        this.c = (ViewGroup) playerControlView.findViewById(R.id.exo_top_controls);
        this.b = playerControlView.findViewById(R.id.exo_controls_background);
        this.d = (ViewGroup) playerControlView.findViewById(R.id.exo_center_controls);
        this.f = (ViewGroup) playerControlView.findViewById(R.id.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) playerControlView.findViewById(R.id.exo_bottom_bar);
        this.e = viewGroup;
        this.j = (ViewGroup) playerControlView.findViewById(R.id.exo_time);
        View findViewById = playerControlView.findViewById(R.id.exo_progress);
        this.k = findViewById;
        this.g = (ViewGroup) playerControlView.findViewById(R.id.exo_basic_controls);
        this.h = (ViewGroup) playerControlView.findViewById(R.id.exo_extra_controls);
        this.i = (ViewGroup) playerControlView.findViewById(R.id.exo_extra_controls_scroll_view);
        View findViewById2 = playerControlView.findViewById(R.id.exo_overflow_show);
        this.l = findViewById2;
        View findViewById3 = playerControlView.findViewById(R.id.exo_overflow_hide);
        if (findViewById2 != null && findViewById3 != null) {
            findViewById2.setOnClickListener(new a(i2, this));
            findViewById3.setOnClickListener(new a(i2, this));
        }
        final int i4 = 2;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.media3.ui.e
            public final /* synthetic */ PlayerControlViewLayoutManager b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i5 = i2;
                PlayerControlViewLayoutManager playerControlViewLayoutManager = this.b;
                switch (i5) {
                    case 0:
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = playerControlViewLayoutManager.b;
                        if (view != null) {
                            view.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup2 = playerControlViewLayoutManager.c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup4 = playerControlViewLayoutManager.f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(floatValue);
                            return;
                        }
                        return;
                    case 1:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = playerControlViewLayoutManager.b;
                        if (view2 != null) {
                            view2.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup5 = playerControlViewLayoutManager.c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup6 = playerControlViewLayoutManager.d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup7 = playerControlViewLayoutManager.f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(floatValue2);
                            return;
                        }
                        return;
                }
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                View view = playerControlViewLayoutManager.b;
                if (view != null) {
                    view.setVisibility(4);
                }
                ViewGroup viewGroup2 = playerControlViewLayoutManager.c;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(4);
                }
                ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(4);
                }
                ViewGroup viewGroup4 = playerControlViewLayoutManager.f;
                if (viewGroup4 != null) {
                    viewGroup4.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                View view = playerControlViewLayoutManager.k;
                if ((view instanceof DefaultTimeBar) && !playerControlViewLayoutManager.B) {
                    DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                    ValueAnimator valueAnimator = defaultTimeBar.N;
                    if (valueAnimator.isStarted()) {
                        valueAnimator.cancel();
                    }
                    valueAnimator.setFloatValues(defaultTimeBar.O, 0.0f);
                    valueAnimator.setDuration(250L);
                    valueAnimator.start();
                }
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.media3.ui.e
            public final /* synthetic */ PlayerControlViewLayoutManager b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i5 = i;
                PlayerControlViewLayoutManager playerControlViewLayoutManager = this.b;
                switch (i5) {
                    case 0:
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = playerControlViewLayoutManager.b;
                        if (view != null) {
                            view.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup2 = playerControlViewLayoutManager.c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup4 = playerControlViewLayoutManager.f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(floatValue);
                            return;
                        }
                        return;
                    case 1:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = playerControlViewLayoutManager.b;
                        if (view2 != null) {
                            view2.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup5 = playerControlViewLayoutManager.c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup6 = playerControlViewLayoutManager.d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup7 = playerControlViewLayoutManager.f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(floatValue2);
                            return;
                        }
                        return;
                }
            }
        });
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                int i5;
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                View view = playerControlViewLayoutManager.b;
                if (view != null) {
                    view.setVisibility(0);
                }
                ViewGroup viewGroup2 = playerControlViewLayoutManager.c;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(0);
                }
                ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(0);
                }
                ViewGroup viewGroup4 = playerControlViewLayoutManager.f;
                if (viewGroup4 != null) {
                    if (playerControlViewLayoutManager.B) {
                        i5 = 0;
                    } else {
                        i5 = 4;
                    }
                    viewGroup4.setVisibility(i5);
                }
                View view2 = playerControlViewLayoutManager.k;
                if ((view2 instanceof DefaultTimeBar) && !playerControlViewLayoutManager.B) {
                    DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view2;
                    ValueAnimator valueAnimator = defaultTimeBar.N;
                    if (valueAnimator.isStarted()) {
                        valueAnimator.cancel();
                    }
                    defaultTimeBar.P = false;
                    valueAnimator.setFloatValues(defaultTimeBar.O, 1.0f);
                    valueAnimator.setDuration(250L);
                    valueAnimator.start();
                }
            }
        });
        Resources resources = playerControlView.getResources();
        float dimension = resources.getDimension(R.dimen.exo_styled_bottom_bar_height) - resources.getDimension(R.dimen.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(R.dimen.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.m = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                playerControlViewLayoutManager.i(1);
                if (playerControlViewLayoutManager.C) {
                    playerControlView.post(playerControlViewLayoutManager.t);
                    playerControlViewLayoutManager.C = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager.this.i(3);
            }
        });
        animatorSet.play(ofFloat).with(d(findViewById, 0.0f, dimension)).with(d(viewGroup, 0.0f, dimension));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.n = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                playerControlViewLayoutManager.i(2);
                if (playerControlViewLayoutManager.C) {
                    playerControlView.post(playerControlViewLayoutManager.t);
                    playerControlViewLayoutManager.C = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager.this.i(3);
            }
        });
        animatorSet2.play(d(findViewById, dimension, dimension2)).with(d(viewGroup, dimension, dimension2));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.o = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager playerControlViewLayoutManager = PlayerControlViewLayoutManager.this;
                playerControlViewLayoutManager.i(2);
                if (playerControlViewLayoutManager.C) {
                    playerControlView.post(playerControlViewLayoutManager.t);
                    playerControlViewLayoutManager.C = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager.this.i(3);
            }
        });
        animatorSet3.play(ofFloat).with(d(findViewById, 0.0f, dimension2)).with(d(viewGroup, 0.0f, dimension2));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.p = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager.this.i(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager.this.i(4);
            }
        });
        animatorSet4.play(ofFloat2).with(d(findViewById, dimension, 0.0f)).with(d(viewGroup, dimension, 0.0f));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.q = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PlayerControlViewLayoutManager.this.i(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PlayerControlViewLayoutManager.this.i(4);
            }
        });
        animatorSet5.play(ofFloat2).with(d(findViewById, dimension2, 0.0f)).with(d(viewGroup, dimension2, 0.0f));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.r = ofFloat3;
        ofFloat3.setDuration(250L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.media3.ui.e
            public final /* synthetic */ PlayerControlViewLayoutManager b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i5 = i3;
                PlayerControlViewLayoutManager playerControlViewLayoutManager = this.b;
                switch (i5) {
                    case 0:
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = playerControlViewLayoutManager.b;
                        if (view != null) {
                            view.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup2 = playerControlViewLayoutManager.c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup4 = playerControlViewLayoutManager.f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(floatValue);
                            return;
                        }
                        return;
                    case 1:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = playerControlViewLayoutManager.b;
                        if (view2 != null) {
                            view2.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup5 = playerControlViewLayoutManager.c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup6 = playerControlViewLayoutManager.d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup7 = playerControlViewLayoutManager.f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(floatValue2);
                            return;
                        }
                        return;
                }
            }
        });
        ofFloat3.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ViewGroup viewGroup2 = PlayerControlViewLayoutManager.this.g;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                ViewGroup viewGroup2 = PlayerControlViewLayoutManager.this.i;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(0);
                    viewGroup2.setTranslationX(viewGroup2.getWidth());
                    viewGroup2.scrollTo(viewGroup2.getWidth(), 0);
                }
            }
        });
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.s = ofFloat4;
        ofFloat4.setDuration(250L);
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.media3.ui.e
            public final /* synthetic */ PlayerControlViewLayoutManager b;

            {
                this.b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i5 = i4;
                PlayerControlViewLayoutManager playerControlViewLayoutManager = this.b;
                switch (i5) {
                    case 0:
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = playerControlViewLayoutManager.b;
                        if (view != null) {
                            view.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup2 = playerControlViewLayoutManager.c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup3 = playerControlViewLayoutManager.d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(floatValue);
                        }
                        ViewGroup viewGroup4 = playerControlViewLayoutManager.f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(floatValue);
                            return;
                        }
                        return;
                    case 1:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        playerControlViewLayoutManager.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        return;
                    default:
                        float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = playerControlViewLayoutManager.b;
                        if (view2 != null) {
                            view2.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup5 = playerControlViewLayoutManager.c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup6 = playerControlViewLayoutManager.d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(floatValue2);
                        }
                        ViewGroup viewGroup7 = playerControlViewLayoutManager.f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(floatValue2);
                            return;
                        }
                        return;
                }
            }
        });
        ofFloat4.addListener(new AnimatorListenerAdapter() { // from class: androidx.media3.ui.PlayerControlViewLayoutManager.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ViewGroup viewGroup2 = PlayerControlViewLayoutManager.this.i;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                ViewGroup viewGroup2 = PlayerControlViewLayoutManager.this.g;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(0);
                }
            }
        });
    }

    public static int c(View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + width;
        }
        return width;
    }

    public static ObjectAnimator d(View view, float f, float f2) {
        return ObjectAnimator.ofFloat(view, "translationY", f, f2);
    }

    public static boolean j(View view) {
        int id = view.getId();
        if (id != R.id.exo_bottom_bar && id != R.id.exo_media_route_button_placeholder && id != R.id.exo_prev && id != R.id.exo_next && id != R.id.exo_rew && id != R.id.exo_rew_with_amount && id != R.id.exo_ffwd && id != R.id.exo_ffwd_with_amount) {
            return false;
        }
        return true;
    }

    public final void a(float f) {
        ViewGroup viewGroup = this.i;
        if (viewGroup != null) {
            viewGroup.setTranslationX((int) ((1.0f - f) * viewGroup.getWidth()));
        }
        ViewGroup viewGroup2 = this.j;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f);
        }
        ViewGroup viewGroup3 = this.g;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f);
        }
    }

    public final boolean b(View view) {
        if (view != null && this.z.contains(view)) {
            return true;
        }
        return false;
    }

    public final void e(long j, Runnable runnable) {
        if (j >= 0) {
            this.a.postDelayed(runnable, j);
        }
    }

    public final void f() {
        d dVar = this.x;
        PlayerControlView playerControlView = this.a;
        playerControlView.removeCallbacks(dVar);
        playerControlView.removeCallbacks(this.u);
        playerControlView.removeCallbacks(this.w);
        playerControlView.removeCallbacks(this.v);
    }

    public final void g() {
        if (this.A != 3) {
            f();
            int showTimeoutMs = this.a.getShowTimeoutMs();
            if (showTimeoutMs > 0) {
                if (!this.D) {
                    e(showTimeoutMs, this.x);
                } else if (this.A == 1) {
                    e(2000L, this.v);
                } else {
                    e(showTimeoutMs, this.w);
                }
            }
        }
    }

    public final void h(View view, boolean z) {
        if (view == null) {
            return;
        }
        ArrayList arrayList = this.z;
        if (!z) {
            view.setVisibility(8);
            arrayList.remove(view);
            return;
        }
        if (this.B && j(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        arrayList.add(view);
    }

    public final void i(int i) {
        int i2 = this.A;
        this.A = i;
        PlayerControlView playerControlView = this.a;
        if (i == 2) {
            playerControlView.setVisibility(8);
        } else if (i2 == 2) {
            playerControlView.setVisibility(0);
        }
        if (i2 != i) {
            Iterator it = playerControlView.t.iterator();
            while (it.hasNext()) {
                PlayerControlView.VisibilityListener visibilityListener = (PlayerControlView.VisibilityListener) it.next();
                playerControlView.getVisibility();
                PlayerView.this.l();
            }
        }
    }

    public final void k() {
        if (!this.D) {
            i(0);
            g();
            return;
        }
        int i = this.A;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return;
                    }
                } else {
                    this.C = true;
                }
            } else {
                this.q.start();
            }
        } else {
            this.p.start();
        }
        g();
    }
}
