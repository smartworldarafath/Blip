package androidx.media3.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.AttachedSurfaceControl;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.SurfaceSyncGroup;
import androidx.media3.common.AdOverlayInfo;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.ErrorMessageProvider;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.ViewProvider;
import androidx.media3.common.text.CueGroup;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.ui.AspectRatioFrameLayout;
import androidx.media3.ui.PlayerControlView;
import androidx.media3.ui.PlayerView;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.ac;
import defpackage.bb;
import defpackage.r;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class PlayerView extends FrameLayout {
    public static final /* synthetic */ int P = 0;
    public final Object A;
    public Player B;
    public boolean C;
    public PlayerControlView.VisibilityListener D;
    public int E;
    public int F;
    public Drawable G;
    public int H;
    public boolean I;
    public CharSequence J;
    public int K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public final ComponentListener j;
    public final AspectRatioFrameLayout k;
    public final View l;
    public final View m;
    public final boolean n;
    public final SurfaceSyncGroupCompatV34 o;
    public final ImageView p;
    public final ImageView q;
    public final SubtitleView r;
    public final View s;
    public final TextView t;
    public final PlayerControlView u;
    public final FrameLayout v;
    public final FrameLayout w;
    public final Handler x;
    public final Class y;
    public final Method z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ComponentListener implements Player.Listener, View.OnClickListener, PlayerControlView.VisibilityListener, PlayerControlView.OnFullScreenModeChangedListener {
        public final Timeline.Period j = new Timeline.Period();
        public Object k;

        public ComponentListener() {
        }

        @Override // androidx.media3.common.Player.Listener
        public final void C(int i, int i2) {
            PlayerView playerView = PlayerView.this;
            View view = playerView.m;
            if (Build.VERSION.SDK_INT == 34 && (view instanceof SurfaceView) && playerView.O) {
                final SurfaceSyncGroupCompatV34 surfaceSyncGroupCompatV34 = playerView.o;
                surfaceSyncGroupCompatV34.getClass();
                Handler handler = playerView.x;
                final SurfaceView surfaceView = (SurfaceView) view;
                final defpackage.e eVar = new defpackage.e(13, playerView);
                handler.post(new Runnable() { // from class: androidx.media3.ui.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AttachedSurfaceControl rootSurfaceControl;
                        boolean add;
                        PlayerView.SurfaceSyncGroupCompatV34 surfaceSyncGroupCompatV342 = PlayerView.SurfaceSyncGroupCompatV34.this;
                        surfaceSyncGroupCompatV342.getClass();
                        rootSurfaceControl = surfaceView.getRootSurfaceControl();
                        if (rootSurfaceControl == null) {
                            return;
                        }
                        SurfaceSyncGroup h = ac.h();
                        surfaceSyncGroupCompatV342.a = h;
                        add = h.add(rootSurfaceControl, new r(2));
                        Preconditions.n(add);
                        eVar.run();
                        rootSurfaceControl.applyTransactionOnDraw(bb.h());
                    }
                });
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void a(VideoSize videoSize) {
            PlayerView playerView;
            Player player;
            if (!videoSize.equals(VideoSize.d) && (player = (playerView = PlayerView.this).B) != null && player.y() != 1) {
                playerView.j();
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void c(CueGroup cueGroup) {
            SubtitleView subtitleView = PlayerView.this.r;
            if (subtitleView != null) {
                subtitleView.setCues(cueGroup.a);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void j(int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2) {
            PlayerControlView playerControlView;
            int i2 = PlayerView.P;
            PlayerView playerView = PlayerView.this;
            if (playerView.d() && playerView.M && (playerControlView = playerView.u) != null) {
                playerControlView.g();
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void m(int i, boolean z) {
            int i2 = PlayerView.P;
            PlayerView playerView = PlayerView.this;
            playerView.k();
            if (playerView.d() && playerView.M) {
                PlayerControlView playerControlView = playerView.u;
                if (playerControlView != null) {
                    playerControlView.g();
                    return;
                }
                return;
            }
            playerView.e(false);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void n(int i) {
            int i2 = PlayerView.P;
            PlayerView playerView = PlayerView.this;
            playerView.k();
            playerView.m();
            if (playerView.d() && playerView.M) {
                PlayerControlView playerControlView = playerView.u;
                if (playerControlView != null) {
                    playerControlView.g();
                    return;
                }
                return;
            }
            playerView.e(false);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = PlayerView.P;
            PlayerView.this.i();
        }

        @Override // androidx.media3.common.Player.Listener
        public final void v() {
            PlayerView playerView = PlayerView.this;
            View view = playerView.l;
            if (view != null) {
                view.setVisibility(4);
                if (playerView.b()) {
                    ImageView imageView = playerView.p;
                    if (imageView != null) {
                        imageView.setVisibility(4);
                        return;
                    }
                    return;
                }
                playerView.c();
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void w(Tracks tracks) {
            Timeline timeline;
            PlayerView playerView = PlayerView.this;
            Player player = playerView.B;
            player.getClass();
            BasePlayer basePlayer = (BasePlayer) player;
            if (basePlayer.V(17)) {
                timeline = player.K();
            } else {
                timeline = Timeline.a;
            }
            if (timeline.p()) {
                this.k = null;
            } else {
                boolean V = basePlayer.V(30);
                Timeline.Period period = this.j;
                if (V && !player.z().a.isEmpty()) {
                    this.k = timeline.f(player.l(), period, true).b;
                } else {
                    Object obj = this.k;
                    if (obj != null) {
                        int b = timeline.b(obj);
                        if (b != -1) {
                            if (player.D() == timeline.f(b, period, false).c) {
                                return;
                            }
                        }
                        this.k = null;
                    }
                }
            }
            playerView.n(false);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ControllerVisibilityListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface FullscreenButtonClickListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SurfaceSyncGroupCompatV34 {
        public SurfaceSyncGroup a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerView(Context context) {
        super(context, null, 0);
        SurfaceSyncGroupCompatV34 surfaceSyncGroupCompatV34;
        Class<ExoPlayer> cls;
        Object obj;
        Method method;
        int i;
        int i2;
        ComponentListener componentListener = new ComponentListener();
        this.j = componentListener;
        this.x = new Handler(Looper.getMainLooper());
        if (isInEditMode()) {
            this.k = null;
            this.l = null;
            this.m = null;
            this.n = false;
            this.o = null;
            this.p = null;
            this.q = null;
            this.r = null;
            this.s = null;
            this.t = null;
            this.u = null;
            this.v = null;
            this.w = null;
            this.y = null;
            this.z = null;
            this.A = null;
            ImageView imageView = new ImageView(context);
            Resources resources = getResources();
            imageView.setImageDrawable(resources.getDrawable(R.drawable.exo_edit_mode_logo, context.getTheme()));
            imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color, null));
            addView(imageView);
            return;
        }
        LayoutInflater.from(context).inflate(R.layout.exo_player_view, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R.id.exo_content_frame);
        this.k = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(0);
        }
        this.l = findViewById(R.id.exo_shutter);
        if (aspectRatioFrameLayout != null) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            SurfaceView surfaceView = new SurfaceView(context);
            if (Build.VERSION.SDK_INT >= 34) {
                surfaceView.setSurfaceLifecycle(2);
            }
            this.m = surfaceView;
            surfaceView.setLayoutParams(layoutParams);
            surfaceView.setOnClickListener(componentListener);
            surfaceView.setClickable(false);
            aspectRatioFrameLayout.addView(surfaceView, 0);
        } else {
            this.m = null;
        }
        this.n = false;
        if (Build.VERSION.SDK_INT == 34) {
            surfaceSyncGroupCompatV34 = new Object();
        } else {
            surfaceSyncGroupCompatV34 = null;
        }
        this.o = surfaceSyncGroupCompatV34;
        this.v = (FrameLayout) findViewById(R.id.exo_ad_overlay);
        this.w = (FrameLayout) findViewById(R.id.exo_overlay);
        this.p = (ImageView) findViewById(R.id.exo_image);
        this.F = 0;
        try {
            cls = ExoPlayer.class;
            method = cls.getMethod("setImageOutput", ImageOutput.class);
            obj = Proxy.newProxyInstance(ImageOutput.class.getClassLoader(), new Class[]{ImageOutput.class}, new InvocationHandler() { // from class: td
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj2, Method method2, Object[] objArr) {
                    int i3 = PlayerView.P;
                    if (method2.getName().equals("onImageAvailable")) {
                        Bitmap bitmap = (Bitmap) objArr[1];
                        PlayerView playerView = PlayerView.this;
                        playerView.x.post(new f3(16, playerView, bitmap));
                        return null;
                    }
                    return null;
                }
            });
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            obj = null;
            method = null;
        }
        this.y = cls;
        this.z = method;
        this.A = obj;
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_artwork);
        this.q = imageView2;
        if (imageView2 != null) {
            i = 1;
        } else {
            i = 0;
        }
        this.E = i;
        SubtitleView subtitleView = (SubtitleView) findViewById(R.id.exo_subtitles);
        this.r = subtitleView;
        if (subtitleView != null) {
            subtitleView.a();
            subtitleView.b();
        }
        View findViewById = findViewById(R.id.exo_buffering);
        this.s = findViewById;
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        this.H = 0;
        TextView textView = (TextView) findViewById(R.id.exo_error_message);
        this.t = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(R.id.exo_controller);
        View findViewById2 = findViewById(R.id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.u = playerControlView;
        } else if (findViewById2 != null) {
            PlayerControlView playerControlView2 = new PlayerControlView(context);
            this.u = playerControlView2;
            playerControlView2.setId(R.id.exo_controller);
            playerControlView2.setLayoutParams(findViewById2.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById2.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById2);
            viewGroup.removeView(findViewById2);
            viewGroup.addView(playerControlView2, indexOfChild);
        } else {
            this.u = null;
        }
        PlayerControlView playerControlView3 = this.u;
        if (playerControlView3 != null) {
            i2 = 5000;
        } else {
            i2 = 0;
        }
        this.K = i2;
        this.N = true;
        this.L = true;
        this.M = true;
        this.C = playerControlView3 != null;
        if (playerControlView3 != null) {
            PlayerControlViewLayoutManager playerControlViewLayoutManager = playerControlView3.j;
            int i3 = playerControlViewLayoutManager.A;
            if (i3 != 3 && i3 != 2) {
                playerControlViewLayoutManager.f();
                playerControlViewLayoutManager.i(2);
            }
            PlayerControlView playerControlView4 = this.u;
            ComponentListener componentListener2 = this.j;
            playerControlView4.getClass();
            componentListener2.getClass();
            playerControlView4.t.add(componentListener2);
        }
        setClickable(true);
        l();
    }

    public static void a(PlayerView playerView, Bitmap bitmap) {
        playerView.setImage(new BitmapDrawable(playerView.getResources(), bitmap));
        Player player = playerView.B;
        if (player != null && ((BasePlayer) player).V(30) && player.z().a(2)) {
            return;
        }
        ImageView imageView = playerView.p;
        if (imageView != null) {
            imageView.setVisibility(0);
            playerView.o();
        }
        View view = playerView.l;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private void setImage(Drawable drawable) {
        ImageView imageView = this.p;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        o();
    }

    private void setImageOutput(Player player) {
        Class cls = this.y;
        if (cls != null && cls.isAssignableFrom(player.getClass())) {
            try {
                Method method = this.z;
                method.getClass();
                Object obj = this.A;
                obj.getClass();
                method.invoke(player, obj);
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public final boolean b() {
        Player player = this.B;
        if (player != null && this.A != null && ((BasePlayer) player).V(30) && player.z().a(4)) {
            return true;
        }
        return false;
    }

    public final void c() {
        ImageView imageView = this.p;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
        if (imageView != null) {
            imageView.setImageResource(android.R.color.transparent);
        }
    }

    public final boolean d() {
        Player player = this.B;
        if (player != null && ((BasePlayer) player).V(16) && this.B.f() && this.B.i()) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        SurfaceSyncGroupCompatV34 surfaceSyncGroupCompatV34;
        SurfaceSyncGroup surfaceSyncGroup;
        super.dispatchDraw(canvas);
        if (Build.VERSION.SDK_INT == 34 && (surfaceSyncGroupCompatV34 = this.o) != null && this.O && (surfaceSyncGroup = surfaceSyncGroupCompatV34.a) != null) {
            surfaceSyncGroup.markSyncReady();
            surfaceSyncGroupCompatV34.a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        Player player = this.B;
        if (player != null && ((BasePlayer) player).V(16) && this.B.f()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 19 && keyCode != 270 && keyCode != 22 && keyCode != 271 && keyCode != 20 && keyCode != 269 && keyCode != 21 && keyCode != 268 && keyCode != 23) {
            z = false;
        } else {
            z = true;
        }
        PlayerControlView playerControlView = this.u;
        if (z && p() && !playerControlView.j()) {
            e(true);
            return true;
        }
        if ((p() && playerControlView.d(keyEvent)) || super.dispatchKeyEvent(keyEvent)) {
            e(true);
            return true;
        }
        if (z && p()) {
            e(true);
        }
        return false;
    }

    public final void e(boolean z) {
        boolean z2;
        if ((!d() || !this.M) && p()) {
            PlayerControlView playerControlView = this.u;
            if (playerControlView.j() && playerControlView.getShowTimeoutMs() <= 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean g = g();
            if (z || z2 || g) {
                h(g);
            }
        }
    }

    public final boolean f(Drawable drawable) {
        ImageView imageView = this.q;
        if (imageView != null && drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                float f = intrinsicWidth / intrinsicHeight;
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                if (this.E == 2) {
                    f = getWidth() / getHeight();
                    scaleType = ImageView.ScaleType.CENTER_CROP;
                }
                AspectRatioFrameLayout aspectRatioFrameLayout = this.k;
                if (aspectRatioFrameLayout != null) {
                    aspectRatioFrameLayout.setAspectRatio(f);
                }
                imageView.setScaleType(scaleType);
                imageView.setImageDrawable(drawable);
                imageView.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    public final boolean g() {
        Player player = this.B;
        if (player == null) {
            return true;
        }
        int y = player.y();
        if (this.L) {
            if (!((BasePlayer) this.B).V(17) || !this.B.K().p()) {
                if (y != 1 && y != 4) {
                    Player player2 = this.B;
                    player2.getClass();
                    if (player2.i()) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public List<AdOverlayInfo> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.w;
        if (frameLayout != null) {
            arrayList.add(new AdOverlayInfo(frameLayout));
        }
        PlayerControlView playerControlView = this.u;
        if (playerControlView != null) {
            arrayList.add(new AdOverlayInfo(playerControlView));
        }
        return ImmutableList.m(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.v;
        Preconditions.j(frameLayout, "exo_ad_overlay must be present for ad playback");
        return frameLayout;
    }

    public int getArtworkDisplayMode() {
        return this.E;
    }

    public boolean getControllerAutoShow() {
        return this.L;
    }

    public boolean getControllerHideOnTouch() {
        return this.N;
    }

    public int getControllerShowTimeoutMs() {
        return this.K;
    }

    public Drawable getDefaultArtwork() {
        return this.G;
    }

    public int getImageDisplayMode() {
        return this.F;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.w;
    }

    public Player getPlayer() {
        return this.B;
    }

    public int getResizeMode() {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.k;
        aspectRatioFrameLayout.getClass();
        return aspectRatioFrameLayout.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.r;
    }

    @Deprecated
    public boolean getUseArtwork() {
        if (this.E != 0) {
            return true;
        }
        return false;
    }

    public boolean getUseController() {
        return this.C;
    }

    public View getVideoSurfaceView() {
        return this.m;
    }

    public final void h(boolean z) {
        int i;
        if (!p()) {
            return;
        }
        if (z) {
            i = 0;
        } else {
            i = this.K;
        }
        PlayerControlView playerControlView = this.u;
        playerControlView.setShowTimeoutMs(i);
        PlayerControlViewLayoutManager playerControlViewLayoutManager = playerControlView.j;
        PlayerControlView playerControlView2 = playerControlViewLayoutManager.a;
        if (!playerControlView2.l()) {
            playerControlView2.setVisibility(0);
            playerControlView2.m();
            ImageView imageView = playerControlView2.E;
            if (imageView != null) {
                imageView.requestFocus();
            }
        }
        playerControlViewLayoutManager.k();
    }

    public final void i() {
        if (p() && this.B != null) {
            PlayerControlView playerControlView = this.u;
            if (!playerControlView.j()) {
                e(true);
            } else if (this.N) {
                playerControlView.g();
            }
        }
    }

    public final void j() {
        VideoSize videoSize;
        float f;
        Player player = this.B;
        if (player != null) {
            videoSize = player.n();
        } else {
            videoSize = VideoSize.d;
        }
        int i = videoSize.a;
        int i2 = videoSize.b;
        float f2 = 0.0f;
        if (i2 != 0 && i != 0) {
            f = (i * videoSize.c) / i2;
        } else {
            f = 0.0f;
        }
        if (!this.n) {
            f2 = f;
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = this.k;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
    
        if (r5.B.i() == false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k() {
        boolean z;
        View view = this.s;
        if (view != null) {
            Player player = this.B;
            int i = 0;
            if (player != null && player.y() == 2) {
                int i2 = this.H;
                z = true;
                if (i2 != 2) {
                    if (i2 == 1) {
                    }
                }
                if (!z) {
                    i = 8;
                }
                view.setVisibility(i);
            }
            z = false;
            if (!z) {
            }
            view.setVisibility(i);
        }
    }

    public final void l() {
        String str = null;
        PlayerControlView playerControlView = this.u;
        if (playerControlView != null && this.C) {
            if (playerControlView.j()) {
                if (this.N) {
                    str = getResources().getString(R.string.exo_controls_hide);
                }
                setContentDescription(str);
                return;
            }
            setContentDescription(getResources().getString(R.string.exo_controls_show));
            return;
        }
        setContentDescription(null);
    }

    public final void m() {
        TextView textView = this.t;
        if (textView != null) {
            CharSequence charSequence = this.J;
            if (charSequence != null) {
                textView.setText(charSequence);
                textView.setVisibility(0);
            } else {
                Player player = this.B;
                if (player != null) {
                    player.t();
                }
                textView.setVisibility(8);
            }
        }
    }

    public final void n(boolean z) {
        boolean z2;
        boolean z3;
        byte[] bArr;
        Drawable drawable;
        Player player = this.B;
        boolean z4 = true;
        boolean z5 = false;
        if (player != null && ((BasePlayer) player).V(30) && !player.z().a.isEmpty()) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z6 = this.I;
        ImageView imageView = this.q;
        View view = this.l;
        if (!z6 && (!z2 || z)) {
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
            if (view != null) {
                view.setVisibility(0);
            }
            c();
        }
        if (z2) {
            Player player2 = this.B;
            if (player2 != null && ((BasePlayer) player2).V(30) && player2.z().a(2)) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean b = b();
            if (!z3 && !b) {
                if (view != null) {
                    view.setVisibility(0);
                }
                c();
            }
            ImageView imageView2 = this.p;
            if (view == null || view.getVisibility() != 4 || imageView2 == null || (drawable = imageView2.getDrawable()) == null || drawable.getAlpha() == 0) {
                z4 = false;
            }
            if (b && !z3 && z4) {
                if (view != null) {
                    view.setVisibility(0);
                }
                if (imageView2 != null) {
                    imageView2.setVisibility(0);
                    o();
                }
            } else if (z3 && !b && z4) {
                c();
            }
            if (!z3 && !b && this.E != 0) {
                imageView.getClass();
                if (player != null && ((BasePlayer) player).V(18) && (bArr = player.R().f) != null) {
                    z5 = f(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
                }
                if (z5 || f(this.G)) {
                    return;
                }
            }
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
        }
    }

    public final void o() {
        Drawable drawable;
        AspectRatioFrameLayout aspectRatioFrameLayout;
        ImageView imageView = this.p;
        if (imageView != null && (drawable = imageView.getDrawable()) != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                float f = intrinsicWidth / intrinsicHeight;
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                if (this.F == 1) {
                    f = getWidth() / getHeight();
                    scaleType = ImageView.ScaleType.CENTER_CROP;
                }
                if (imageView.getVisibility() == 0 && (aspectRatioFrameLayout = this.k) != null) {
                    aspectRatioFrameLayout.setAspectRatio(f);
                }
                imageView.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent motionEvent) {
        if (p() && this.B != null) {
            e(true);
            return true;
        }
        return false;
    }

    public final boolean p() {
        if (this.C) {
            this.u.getClass();
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        i();
        return super.performClick();
    }

    public void setArtworkDisplayMode(int i) {
        boolean z;
        if (i != 0 && this.q == null) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.n(z);
        if (this.E != i) {
            this.E = i;
            n(false);
        }
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.AspectRatioListener aspectRatioListener) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.k;
        aspectRatioFrameLayout.getClass();
        aspectRatioFrameLayout.setAspectRatioListener(aspectRatioListener);
    }

    public void setControllerAnimationEnabled(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setAnimationEnabled(z);
    }

    public void setControllerAutoShow(boolean z) {
        this.L = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.M = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        this.u.getClass();
        this.N = z;
        l();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(PlayerControlView.OnFullScreenModeChangedListener onFullScreenModeChangedListener) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setOnFullScreenModeChangedListener(onFullScreenModeChangedListener);
    }

    public void setControllerShowTimeoutMs(int i) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        this.K = i;
        if (playerControlView.j()) {
            h(g());
        }
    }

    @Deprecated
    public void setControllerVisibilityListener(PlayerControlView.VisibilityListener visibilityListener) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        PlayerControlView.VisibilityListener visibilityListener2 = this.D;
        if (visibilityListener2 != visibilityListener) {
            if (visibilityListener2 != null) {
                playerControlView.t.remove(visibilityListener2);
            }
            this.D = visibilityListener;
            if (visibilityListener != null) {
                playerControlView.getClass();
                playerControlView.t.add(visibilityListener);
                setControllerVisibilityListener((ControllerVisibilityListener) null);
            }
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        boolean z;
        if (this.t != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        this.J = charSequence;
        m();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.G != drawable) {
            this.G = drawable;
            n(false);
        }
    }

    public void setEnableComposeSurfaceSyncWorkaround(boolean z) {
        this.O = z;
    }

    public void setErrorMessageProvider(ErrorMessageProvider<? super PlaybackException> errorMessageProvider) {
        if (errorMessageProvider != null) {
            m();
        }
    }

    public void setFullscreenButtonClickListener(FullscreenButtonClickListener fullscreenButtonClickListener) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setOnFullScreenModeChangedListener(this.j);
    }

    public void setFullscreenButtonState(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.o(z);
    }

    public void setImageDisplayMode(int i) {
        boolean z;
        if (this.p != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        if (this.F != i) {
            this.F = i;
            o();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.I != z) {
            this.I = z;
            n(false);
        }
    }

    public void setMediaRouteButtonViewProvider(ViewProvider viewProvider) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setMediaRouteButtonViewProvider(viewProvider);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ee, code lost:
    
        if (r3 != false) goto L68;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setPlayer(Player player) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        if (player != null && player.L() != Looper.getMainLooper()) {
            z2 = false;
        } else {
            z2 = true;
        }
        Preconditions.e(z2);
        Player player2 = this.B;
        if (player2 != player) {
            View view = this.m;
            ComponentListener componentListener = this.j;
            if (player2 != null) {
                player2.B(componentListener);
                if (((BasePlayer) player2).V(27)) {
                    if (view instanceof TextureView) {
                        player2.m((TextureView) view);
                    } else if (view instanceof SurfaceView) {
                        player2.G((SurfaceView) view);
                    }
                }
                Class cls = this.y;
                if (cls != null && cls.isAssignableFrom(player2.getClass())) {
                    try {
                        Method method = this.z;
                        method.getClass();
                        method.invoke(player2, null);
                    } catch (IllegalAccessException | InvocationTargetException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
            SubtitleView subtitleView = this.r;
            if (subtitleView != null) {
                subtitleView.setCues(null);
            }
            this.B = player;
            boolean p = p();
            PlayerControlView playerControlView = this.u;
            if (p) {
                playerControlView.setPlayer(player);
            }
            k();
            m();
            n(true);
            if (player != null) {
                BasePlayer basePlayer = (BasePlayer) player;
                if (basePlayer.V(27)) {
                    if (view instanceof TextureView) {
                        player.Q((TextureView) view);
                    } else if (view instanceof SurfaceView) {
                        player.r((SurfaceView) view);
                    }
                    if (basePlayer.V(30)) {
                        ImmutableList immutableList = player.z().a;
                        int i = 0;
                        loop0: while (true) {
                            if (i < immutableList.size()) {
                                if (((Tracks.Group) immutableList.get(i)).b.c == 2) {
                                    Tracks.Group group = (Tracks.Group) immutableList.get(i);
                                    for (int i2 = 0; i2 < group.d.length; i2++) {
                                        if (group.a(i2)) {
                                            break loop0;
                                        }
                                    }
                                }
                                i++;
                            } else {
                                z3 = false;
                                break;
                            }
                        }
                    }
                    j();
                }
                if (subtitleView != null && basePlayer.V(28)) {
                    subtitleView.setCues(player.A().a);
                }
                player.H(componentListener);
                setImageOutput(player);
                e(false);
                return;
            }
            if (playerControlView != null) {
                playerControlView.g();
            }
        }
    }

    public void setRepeatToggleModes(int i) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.k;
        aspectRatioFrameLayout.getClass();
        aspectRatioFrameLayout.setResizeMode(i);
    }

    public void setShowBuffering(int i) {
        if (this.H != i) {
            this.H = i;
            k();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setShowFastForwardButton(z);
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setShowNextButton(z);
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setShowPlayButtonIfPlaybackIsSuppressed(z);
    }

    public void setShowPreviousButton(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setShowShuffleButton(z);
    }

    public void setShowSubtitleButton(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setShowSubtitleButton(z);
    }

    public void setShowVrButton(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setShowVrButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.l;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setTimeBarScrubbingEnabled(boolean z) {
        PlayerControlView playerControlView = this.u;
        playerControlView.getClass();
        playerControlView.setTimeBarScrubbingEnabled(z);
    }

    @Deprecated
    public void setUseArtwork(boolean z) {
        setArtworkDisplayMode(!z ? 1 : 0);
    }

    public void setUseController(boolean z) {
        boolean z2;
        boolean z3 = true;
        PlayerControlView playerControlView = this.u;
        if (z && playerControlView == null) {
            z2 = false;
        } else {
            z2 = true;
        }
        Preconditions.n(z2);
        if (!z && !hasOnClickListeners()) {
            z3 = false;
        }
        setClickable(z3);
        if (this.C == z) {
            return;
        }
        this.C = z;
        if (p()) {
            playerControlView.setPlayer(this.B);
        } else if (playerControlView != null) {
            playerControlView.g();
            playerControlView.setPlayer(null);
        }
        l();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.m;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }

    public void setControllerVisibilityListener(ControllerVisibilityListener controllerVisibilityListener) {
        if (controllerVisibilityListener != null) {
            setControllerVisibilityListener((PlayerControlView.VisibilityListener) null);
        }
    }
}
