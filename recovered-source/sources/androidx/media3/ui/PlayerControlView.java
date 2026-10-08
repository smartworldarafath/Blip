package androidx.media3.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.ViewProvider;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.ui.PlayerControlView;
import androidx.media3.ui.TimeBar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.u2;
import defpackage.u3;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class PlayerControlView extends FrameLayout {
    public static final float[] Q0;
    public final PopupWindow A;
    public boolean A0;
    public final int B;
    public boolean B0;
    public final ImageView C;
    public boolean C0;
    public final ImageView D;
    public boolean D0;
    public final ImageView E;
    public boolean E0;
    public final View F;
    public boolean F0;
    public final View G;
    public int G0;
    public final TextView H;
    public boolean H0;
    public final TextView I;
    public int I0;
    public final ImageView J;
    public int J0;
    public final ImageView K;
    public long[] K0;
    public final ImageView L;
    public boolean[] L0;
    public final ImageView M;
    public final long[] M0;
    public final ImageView N;
    public final boolean[] N0;
    public final ImageView O;
    public long O0;
    public final View P;
    public boolean P0;
    public final View Q;
    public final View R;
    public final TextView S;
    public final TextView T;
    public final TimeBar U;
    public final StringBuilder V;
    public final Formatter W;
    public final Timeline.Period a0;
    public final Timeline.Window b0;
    public final defpackage.e c0;
    public final Drawable d0;
    public final Drawable e0;
    public final Drawable f0;
    public final Drawable g0;
    public final Drawable h0;
    public final String i0;
    public final PlayerControlViewLayoutManager j;
    public final String j0;
    public final Resources k;
    public final String k0;
    public final Handler l;
    public final Drawable l0;
    public final ComponentListener m;
    public final Drawable m0;
    public final Class n;
    public final float n0;
    public final Method o;
    public final float o0;
    public final Method p;
    public final String p0;
    public final Class q;
    public final String q0;
    public final Method r;
    public final Drawable r0;
    public final Method s;
    public final Drawable s0;
    public final CopyOnWriteArrayList t;
    public final String t0;
    public final RecyclerView u;
    public final String u0;
    public final SettingsAdapter v;
    public final Drawable v0;
    public final PlaybackSpeedAdapter w;
    public final Drawable w0;
    public final TextTrackSelectionAdapter x;
    public final String x0;
    public final AudioTrackSelectionAdapter y;
    public final String y0;
    public final DefaultTrackNameProvider z;
    public Player z0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class AudioTrackSelectionAdapter extends TrackSelectionAdapter {
        public AudioTrackSelectionAdapter() {
            super();
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public final void f(SubSettingViewHolder subSettingViewHolder) {
            int i;
            subSettingViewHolder.u.setText(R.string.exo_track_selection_auto);
            Player player = PlayerControlView.this.z0;
            player.getClass();
            boolean h = h(player.O());
            View view = subSettingViewHolder.v;
            int i2 = 0;
            if (h) {
                i = 4;
            } else {
                i = 0;
            }
            view.setVisibility(i);
            subSettingViewHolder.a.setOnClickListener(new a(i2, this));
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public final void g(String str) {
            PlayerControlView.this.v.e[1] = str;
        }

        public final boolean h(TrackSelectionParameters trackSelectionParameters) {
            for (int i = 0; i < this.d.size(); i++) {
                if (trackSelectionParameters.v.containsKey(((TrackInformation) this.d.get(i)).a.b)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ComponentListener implements Player.Listener, TimeBar.OnScrubListener, View.OnClickListener, PopupWindow.OnDismissListener {
        public ComponentListener() {
        }

        @Override // androidx.media3.common.Player.Listener
        public final void k(Player.Events events) {
            boolean a = events.a(4, 5, 13);
            PlayerControlView playerControlView = PlayerControlView.this;
            if (a) {
                float[] fArr = PlayerControlView.Q0;
                playerControlView.q();
            }
            if (events.a(4, 5, 7, 13)) {
                float[] fArr2 = PlayerControlView.Q0;
                playerControlView.s();
            }
            if (events.a(8, 13)) {
                float[] fArr3 = PlayerControlView.Q0;
                playerControlView.t();
            }
            if (events.a(9, 13)) {
                float[] fArr4 = PlayerControlView.Q0;
                playerControlView.v();
            }
            if (events.a(8, 9, 11, 0, 16, 17, 13)) {
                float[] fArr5 = PlayerControlView.Q0;
                playerControlView.p();
            }
            if (events.a(11, 0, 13)) {
                float[] fArr6 = PlayerControlView.Q0;
                playerControlView.w();
            }
            if (events.a(12, 13)) {
                float[] fArr7 = PlayerControlView.Q0;
                playerControlView.r();
            }
            if (events.a(2, 13)) {
                float[] fArr8 = PlayerControlView.Q0;
                playerControlView.x();
            }
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PlayerControlView playerControlView = PlayerControlView.this;
            ImageView imageView = playerControlView.M;
            View view2 = playerControlView.R;
            View view3 = playerControlView.Q;
            View view4 = playerControlView.P;
            PlayerControlViewLayoutManager playerControlViewLayoutManager = playerControlView.j;
            Player player = playerControlView.z0;
            if (player != null) {
                playerControlViewLayoutManager.g();
                if (playerControlView.D == view) {
                    BasePlayer basePlayer = (BasePlayer) player;
                    if (basePlayer.V(9)) {
                        basePlayer.a0();
                        return;
                    }
                    return;
                }
                if (playerControlView.C == view) {
                    BasePlayer basePlayer2 = (BasePlayer) player;
                    if (basePlayer2.V(7)) {
                        basePlayer2.b0();
                        return;
                    }
                    return;
                }
                if (playerControlView.F == view) {
                    if (player.y() != 4) {
                        BasePlayer basePlayer3 = (BasePlayer) player;
                        if (basePlayer3.V(12)) {
                            long S = basePlayer3.S() + basePlayer3.v();
                            long duration = basePlayer3.getDuration();
                            if (duration != -9223372036854775807L) {
                                S = Math.min(S, duration);
                            }
                            basePlayer3.Z(12, Math.max(S, 0L));
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (playerControlView.G == view) {
                    BasePlayer basePlayer4 = (BasePlayer) player;
                    if (basePlayer4.V(11)) {
                        long S2 = basePlayer4.S() + (-basePlayer4.T());
                        long duration2 = basePlayer4.getDuration();
                        if (duration2 != -9223372036854775807L) {
                            S2 = Math.min(S2, duration2);
                        }
                        basePlayer4.Z(11, Math.max(S2, 0L));
                        return;
                    }
                    return;
                }
                if (playerControlView.E == view) {
                    if (Util.L(player, playerControlView.D0)) {
                        Util.x(player);
                        return;
                    }
                    BasePlayer basePlayer5 = (BasePlayer) player;
                    if (basePlayer5.V(1)) {
                        basePlayer5.u(false);
                        return;
                    }
                    return;
                }
                if (playerControlView.J == view) {
                    if (((BasePlayer) player).V(15)) {
                        int J = player.J();
                        int i = playerControlView.J0;
                        for (int i2 = 1; i2 <= 2; i2++) {
                            int i3 = (J + i2) % 3;
                            if (i3 != 0) {
                                if (i3 != 1) {
                                    if (i3 == 2 && (i & 2) != 0) {
                                    }
                                } else if ((i & 1) == 0) {
                                }
                            }
                            J = i3;
                        }
                        player.E(J);
                        return;
                    }
                    return;
                }
                if (playerControlView.K == view) {
                    if (((BasePlayer) player).V(14)) {
                        player.j(!player.N());
                        return;
                    }
                    return;
                }
                if (view4 == view) {
                    playerControlViewLayoutManager.f();
                    playerControlView.e(playerControlView.v, view4);
                    return;
                }
                if (view3 == view) {
                    playerControlViewLayoutManager.f();
                    playerControlView.e(playerControlView.w, view3);
                } else if (view2 == view) {
                    playerControlViewLayoutManager.f();
                    playerControlView.e(playerControlView.y, view2);
                } else if (imageView == view) {
                    playerControlViewLayoutManager.f();
                    playerControlView.e(playerControlView.x, imageView);
                }
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            PlayerControlView playerControlView = PlayerControlView.this;
            if (playerControlView.P0) {
                playerControlView.j.g();
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @Deprecated
    /* loaded from: classes.dex */
    public interface OnFullScreenModeChangedListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class PlaybackSpeedAdapter extends RecyclerView.Adapter<SubSettingViewHolder> {
        public final String[] d;
        public final float[] e;
        public int f;

        public PlaybackSpeedAdapter(String[] strArr, float[] fArr) {
            this.d = strArr;
            this.e = fArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int a() {
            return this.d.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void c(RecyclerView.ViewHolder viewHolder, final int i) {
            SubSettingViewHolder subSettingViewHolder = (SubSettingViewHolder) viewHolder;
            View view = subSettingViewHolder.v;
            View view2 = subSettingViewHolder.a;
            String[] strArr = this.d;
            if (i < strArr.length) {
                subSettingViewHolder.u.setText(strArr[i]);
            }
            if (i == this.f) {
                view2.setSelected(true);
                view.setVisibility(0);
            } else {
                view2.setSelected(false);
                view.setVisibility(4);
            }
            view2.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    PlayerControlView.PlaybackSpeedAdapter playbackSpeedAdapter = PlayerControlView.PlaybackSpeedAdapter.this;
                    PlayerControlView playerControlView = PlayerControlView.this;
                    int i2 = playbackSpeedAdapter.f;
                    int i3 = i;
                    if (i3 != i2) {
                        playerControlView.setPlaybackSpeed(playbackSpeedAdapter.e[i3]);
                    }
                    playerControlView.A.dismiss();
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder d(ViewGroup viewGroup) {
            return new SubSettingViewHolder(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ProgressUpdateListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class SettingViewHolder extends RecyclerView.ViewHolder {
        public final TextView u;
        public final TextView v;
        public final ImageView w;

        public SettingViewHolder(View view) {
            super(view);
            this.u = (TextView) view.findViewById(R.id.exo_main_text);
            this.v = (TextView) view.findViewById(R.id.exo_sub_text);
            this.w = (ImageView) view.findViewById(R.id.exo_icon);
            view.setOnClickListener(new a(1, this));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class SettingsAdapter extends RecyclerView.Adapter<SettingViewHolder> {
        public final String[] d;
        public final String[] e;
        public final Drawable[] f;

        public SettingsAdapter(String[] strArr, Drawable[] drawableArr) {
            this.d = strArr;
            this.e = new String[strArr.length];
            this.f = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int a() {
            return this.d.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final long b(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void c(RecyclerView.ViewHolder viewHolder, int i) {
            SettingViewHolder settingViewHolder = (SettingViewHolder) viewHolder;
            boolean e = e(i);
            View view = settingViewHolder.a;
            if (e) {
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            } else {
                view.setLayoutParams(new RecyclerView.LayoutParams(0, 0));
            }
            settingViewHolder.u.setText(this.d[i]);
            String str = this.e[i];
            TextView textView = settingViewHolder.v;
            if (str == null) {
                textView.setVisibility(8);
            } else {
                textView.setText(str);
            }
            Drawable drawable = this.f[i];
            ImageView imageView = settingViewHolder.w;
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setImageDrawable(drawable);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder d(ViewGroup viewGroup) {
            PlayerControlView playerControlView = PlayerControlView.this;
            return new SettingViewHolder(LayoutInflater.from(playerControlView.getContext()).inflate(R.layout.exo_styled_settings_list_item, viewGroup, false));
        }

        public final boolean e(int i) {
            PlayerControlView playerControlView = PlayerControlView.this;
            Player player = playerControlView.z0;
            if (player != null) {
                if (i != 0) {
                    if (i != 1 || (((BasePlayer) player).V(30) && ((BasePlayer) playerControlView.z0).V(29))) {
                        return true;
                    }
                    return false;
                }
                return ((BasePlayer) player).V(13);
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SubSettingViewHolder extends RecyclerView.ViewHolder {
        public final TextView u;
        public final View v;

        public SubSettingViewHolder(View view) {
            super(view);
            this.u = (TextView) view.findViewById(R.id.exo_text);
            this.v = view.findViewById(R.id.exo_check);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TrackInformation {
        public final Tracks.Group a;
        public final int b;
        public final String c;

        /* JADX WARN: Multi-variable type inference failed */
        public TrackInformation(Tracks tracks, int i, int i2, String str) {
            this.a = (Tracks.Group) tracks.a.get(i);
            this.b = i2;
            this.c = str;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public abstract class TrackSelectionAdapter extends RecyclerView.Adapter<SubSettingViewHolder> {
        public List d = new ArrayList();

        public TrackSelectionAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int a() {
            if (this.d.isEmpty()) {
                return 0;
            }
            return this.d.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder d(ViewGroup viewGroup) {
            return new SubSettingViewHolder(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        
            if (r8.a.e[r8.b] != false) goto L14;
         */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void c(SubSettingViewHolder subSettingViewHolder, int i) {
            final Player player = PlayerControlView.this.z0;
            if (player == null) {
                return;
            }
            if (i == 0) {
                f(subSettingViewHolder);
                return;
            }
            boolean z = true;
            final TrackInformation trackInformation = (TrackInformation) this.d.get(i - 1);
            final TrackGroup trackGroup = trackInformation.a.b;
            int i2 = 0;
            if (player.O().v.get(trackGroup) != null) {
            }
            z = false;
            subSettingViewHolder.u.setText(trackInformation.c);
            View view = subSettingViewHolder.v;
            if (!z) {
                i2 = 4;
            }
            view.setVisibility(i2);
            subSettingViewHolder.a.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BasePlayer basePlayer = (BasePlayer) player;
                    if (!basePlayer.V(29)) {
                        return;
                    }
                    DefaultTrackSelector.Parameters parameters = (DefaultTrackSelector.Parameters) basePlayer.O();
                    parameters.getClass();
                    DefaultTrackSelector.Parameters.Builder builder = new DefaultTrackSelector.Parameters.Builder(parameters);
                    PlayerControlView.TrackInformation trackInformation2 = trackInformation;
                    builder.e(new TrackSelectionOverride(trackGroup, ImmutableList.t(Integer.valueOf(trackInformation2.b))));
                    builder.i(trackInformation2.a.b.c, false);
                    basePlayer.F(builder.a());
                    String str = trackInformation2.c;
                    PlayerControlView.TrackSelectionAdapter trackSelectionAdapter = PlayerControlView.TrackSelectionAdapter.this;
                    trackSelectionAdapter.g(str);
                    PlayerControlView.this.A.dismiss();
                }
            });
        }

        public abstract void f(SubSettingViewHolder subSettingViewHolder);

        public abstract void g(String str);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @Deprecated
    /* loaded from: classes.dex */
    public interface VisibilityListener {
    }

    static {
        MediaLibraryInfo.a("media3.ui");
        Q0 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't wrap try/catch for region: R(51:1|2|(2:3|4)|(2:6|7)|8|9|10|12|13|(2:15|16)|17|(1:19)|20|(1:22)|23|(1:25)|26|(1:28)|29|(1:31)|32|(1:34)|35|(1:37)(1:(1:85)(1:86))|38|(1:40)|41|(1:43)|44|(1:46)|47|(1:49)|50|(1:52)(1:(1:82)(1:83))|53|(1:55)|56|(1:58)(1:(1:79)(1:80))|59|(1:61)|62|(1:64)|65|(1:67)|68|(1:70)|71|(1:73)(1:77)|74|75|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(52:1|2|3|4|(2:6|7)|8|9|10|12|13|(2:15|16)|17|(1:19)|20|(1:22)|23|(1:25)|26|(1:28)|29|(1:31)|32|(1:34)|35|(1:37)(1:(1:85)(1:86))|38|(1:40)|41|(1:43)|44|(1:46)|47|(1:49)|50|(1:52)(1:(1:82)(1:83))|53|(1:55)|56|(1:58)(1:(1:79)(1:80))|59|(1:61)|62|(1:64)|65|(1:67)|68|(1:70)|71|(1:73)(1:77)|74|75|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x009f, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00a1, code lost:
    
        r3 = null;
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x014b  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PlayerControlView(Context context) {
        super(context, null, 0);
        Method method;
        Method method2;
        Method method3;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        View findViewById;
        View findViewById2;
        View findViewById3;
        TimeBar timeBar;
        TimeBar timeBar2;
        ImageView imageView4;
        ImageView imageView5;
        ImageView imageView6;
        ImageView imageView7;
        View view;
        ImageView imageView8;
        View view2;
        ImageView imageView9;
        ImageView imageView10;
        ImageView imageView11;
        boolean z;
        Class cls = Boolean.TYPE;
        this.D0 = true;
        this.G0 = 5000;
        this.J0 = 0;
        this.I0 = 200;
        LayoutInflater.from(context).inflate(R.layout.exo_player_control_view, this);
        setDescendantFocusability(262144);
        this.m = new ComponentListener();
        this.t = new CopyOnWriteArrayList();
        this.a0 = new Timeline.Period();
        this.b0 = new Timeline.Window();
        StringBuilder sb = new StringBuilder();
        this.V = sb;
        this.W = new Formatter(sb, Locale.getDefault());
        this.K0 = new long[0];
        this.L0 = new boolean[0];
        this.M0 = new long[0];
        this.N0 = new boolean[0];
        this.c0 = new defpackage.e(12, this);
        try {
            method = ExoPlayer.class.getMethod("setScrubbingModeEnabled", cls);
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            method = null;
        }
        try {
            method2 = ExoPlayer.class.getMethod("isScrubbingModeEnabled", null);
        } catch (ClassNotFoundException | NoSuchMethodException unused2) {
            method2 = null;
            this.n = ExoPlayer.class;
            this.o = method;
            this.p = method2;
            Class<?> cls2 = Class.forName("androidx.media3.transformer.CompositionPlayer");
            Method method4 = cls2.getMethod("setScrubbingModeEnabled", cls);
            method3 = cls2.getMethod("isScrubbingModeEnabled", null);
            this.q = cls2;
            this.r = method4;
            this.s = method3;
            this.S = (TextView) findViewById(R.id.exo_duration);
            this.T = (TextView) findViewById(R.id.exo_position);
            imageView = (ImageView) findViewById(R.id.exo_subtitle);
            this.M = imageView;
            if (imageView != null) {
            }
            imageView2 = (ImageView) findViewById(R.id.exo_fullscreen);
            this.N = imageView2;
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: rd
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    PlayerControlView.this.o(!r0.A0);
                }
            };
            if (imageView2 != null) {
            }
            imageView3 = (ImageView) findViewById(R.id.exo_minimal_fullscreen);
            this.O = imageView3;
            View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: rd
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    PlayerControlView.this.o(!r0.A0);
                }
            };
            if (imageView3 != null) {
            }
            findViewById = findViewById(R.id.exo_settings);
            this.P = findViewById;
            if (findViewById != null) {
            }
            findViewById2 = findViewById(R.id.exo_playback_speed);
            this.Q = findViewById2;
            if (findViewById2 != null) {
            }
            findViewById3 = findViewById(R.id.exo_audio_track);
            this.R = findViewById3;
            if (findViewById3 != null) {
            }
            timeBar = (TimeBar) findViewById(R.id.exo_progress);
            View findViewById4 = findViewById(R.id.exo_progress_placeholder);
            if (timeBar != null) {
            }
            timeBar2 = this.U;
            if (timeBar2 != null) {
            }
            this.l = Util.k(null);
            Resources resources = context.getResources();
            this.k = resources;
            imageView4 = (ImageView) findViewById(R.id.exo_play_pause);
            this.E = imageView4;
            if (imageView4 != null) {
            }
            imageView5 = (ImageView) findViewById(R.id.exo_prev);
            this.C = imageView5;
            if (imageView5 != null) {
            }
            imageView6 = (ImageView) findViewById(R.id.exo_next);
            this.D = imageView6;
            if (imageView6 != null) {
            }
            Typeface b = ResourcesCompat.b(context, R.font.roboto_medium_numbers);
            imageView7 = (ImageView) findViewById(R.id.exo_rew);
            TextView textView = (TextView) findViewById(R.id.exo_rew_with_amount);
            if (imageView7 != null) {
            }
            view = this.G;
            if (view != null) {
            }
            imageView8 = (ImageView) findViewById(R.id.exo_ffwd);
            TextView textView2 = (TextView) findViewById(R.id.exo_ffwd_with_amount);
            if (imageView8 != null) {
            }
            view2 = this.F;
            if (view2 != null) {
            }
            imageView9 = (ImageView) findViewById(R.id.exo_repeat_toggle);
            this.J = imageView9;
            if (imageView9 != null) {
            }
            imageView10 = (ImageView) findViewById(R.id.exo_shuffle);
            this.K = imageView10;
            if (imageView10 != null) {
            }
            this.n0 = resources.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
            this.o0 = resources.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
            imageView11 = (ImageView) findViewById(R.id.exo_vr);
            this.L = imageView11;
            if (imageView11 != null) {
            }
            PlayerControlViewLayoutManager playerControlViewLayoutManager = new PlayerControlViewLayoutManager(this);
            this.j = playerControlViewLayoutManager;
            playerControlViewLayoutManager.D = true;
            SettingsAdapter settingsAdapter = new SettingsAdapter(new String[]{resources.getString(R.string.exo_controls_playback_speed), resources.getString(R.string.exo_track_selection_title_audio)}, new Drawable[]{resources.getDrawable(R.drawable.exo_styled_controls_speed, context.getTheme()), resources.getDrawable(R.drawable.exo_styled_controls_audiotrack, context.getTheme())});
            this.v = settingsAdapter;
            this.B = resources.getDimensionPixelSize(R.dimen.exo_settings_offset);
            RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R.layout.exo_styled_settings_list, (ViewGroup) null);
            this.u = recyclerView;
            recyclerView.setAdapter(settingsAdapter);
            getContext();
            recyclerView.setLayoutManager(new LinearLayoutManager(1));
            PopupWindow popupWindow = new PopupWindow((View) recyclerView, -2, -2, true);
            this.A = popupWindow;
            popupWindow.setOnDismissListener(this.m);
            this.P0 = true;
            this.z = new DefaultTrackNameProvider(getResources());
            this.r0 = resources.getDrawable(R.drawable.exo_styled_controls_subtitle_on, context.getTheme());
            this.s0 = resources.getDrawable(R.drawable.exo_styled_controls_subtitle_off, context.getTheme());
            this.t0 = resources.getString(R.string.exo_controls_cc_enabled_description);
            this.u0 = resources.getString(R.string.exo_controls_cc_disabled_description);
            this.x = new TextTrackSelectionAdapter();
            this.y = new AudioTrackSelectionAdapter();
            this.w = new PlaybackSpeedAdapter(resources.getStringArray(R.array.exo_controls_playback_speeds), Q0);
            this.d0 = resources.getDrawable(R.drawable.exo_styled_controls_play, context.getTheme());
            this.e0 = resources.getDrawable(R.drawable.exo_styled_controls_pause, context.getTheme());
            this.v0 = resources.getDrawable(R.drawable.exo_styled_controls_fullscreen_exit, context.getTheme());
            this.w0 = resources.getDrawable(R.drawable.exo_styled_controls_fullscreen_enter, context.getTheme());
            this.f0 = resources.getDrawable(R.drawable.exo_styled_controls_repeat_off, context.getTheme());
            this.g0 = resources.getDrawable(R.drawable.exo_styled_controls_repeat_one, context.getTheme());
            this.h0 = resources.getDrawable(R.drawable.exo_styled_controls_repeat_all, context.getTheme());
            this.l0 = resources.getDrawable(R.drawable.exo_styled_controls_shuffle_on, context.getTheme());
            this.m0 = resources.getDrawable(R.drawable.exo_styled_controls_shuffle_off, context.getTheme());
            this.x0 = resources.getString(R.string.exo_controls_fullscreen_exit_description);
            this.y0 = resources.getString(R.string.exo_controls_fullscreen_enter_description);
            this.i0 = resources.getString(R.string.exo_controls_repeat_off_description);
            this.j0 = resources.getString(R.string.exo_controls_repeat_one_description);
            this.k0 = resources.getString(R.string.exo_controls_repeat_all_description);
            this.p0 = resources.getString(R.string.exo_controls_shuffle_on_description);
            this.q0 = resources.getString(R.string.exo_controls_shuffle_off_description);
            playerControlViewLayoutManager.h((ViewGroup) findViewById(R.id.exo_bottom_bar), true);
            playerControlViewLayoutManager.h(this.F, true);
            playerControlViewLayoutManager.h(this.G, true);
            playerControlViewLayoutManager.h(imageView5, true);
            playerControlViewLayoutManager.h(imageView6, true);
            playerControlViewLayoutManager.h(imageView10, false);
            playerControlViewLayoutManager.h(imageView, false);
            playerControlViewLayoutManager.h(imageView11, false);
            if (this.J0 != 0) {
            }
            playerControlViewLayoutManager.h(imageView9, z);
            addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: sd
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    PlayerControlView playerControlView = PlayerControlView.this;
                    int i9 = playerControlView.B;
                    PopupWindow popupWindow2 = playerControlView.A;
                    int i10 = i4 - i2;
                    int i11 = i8 - i6;
                    if ((i3 - i != i7 - i5 || i10 != i11) && popupWindow2.isShowing()) {
                        playerControlView.u();
                        popupWindow2.update(view3, (playerControlView.getWidth() - popupWindow2.getWidth()) - i9, (-popupWindow2.getHeight()) - i9, -1, -1);
                    }
                }
            });
        }
        this.n = ExoPlayer.class;
        this.o = method;
        this.p = method2;
        Class<?> cls22 = Class.forName("androidx.media3.transformer.CompositionPlayer");
        Method method42 = cls22.getMethod("setScrubbingModeEnabled", cls);
        try {
            method3 = cls22.getMethod("isScrubbingModeEnabled", null);
        } catch (ClassNotFoundException | NoSuchMethodException unused3) {
            method3 = null;
            this.q = cls22;
            this.r = method42;
            this.s = method3;
            this.S = (TextView) findViewById(R.id.exo_duration);
            this.T = (TextView) findViewById(R.id.exo_position);
            imageView = (ImageView) findViewById(R.id.exo_subtitle);
            this.M = imageView;
            if (imageView != null) {
            }
            imageView2 = (ImageView) findViewById(R.id.exo_fullscreen);
            this.N = imageView2;
            View.OnClickListener onClickListener3 = new View.OnClickListener() { // from class: rd
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    PlayerControlView.this.o(!r0.A0);
                }
            };
            if (imageView2 != null) {
            }
            imageView3 = (ImageView) findViewById(R.id.exo_minimal_fullscreen);
            this.O = imageView3;
            View.OnClickListener onClickListener22 = new View.OnClickListener() { // from class: rd
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    PlayerControlView.this.o(!r0.A0);
                }
            };
            if (imageView3 != null) {
            }
            findViewById = findViewById(R.id.exo_settings);
            this.P = findViewById;
            if (findViewById != null) {
            }
            findViewById2 = findViewById(R.id.exo_playback_speed);
            this.Q = findViewById2;
            if (findViewById2 != null) {
            }
            findViewById3 = findViewById(R.id.exo_audio_track);
            this.R = findViewById3;
            if (findViewById3 != null) {
            }
            timeBar = (TimeBar) findViewById(R.id.exo_progress);
            View findViewById42 = findViewById(R.id.exo_progress_placeholder);
            if (timeBar != null) {
            }
            timeBar2 = this.U;
            if (timeBar2 != null) {
            }
            this.l = Util.k(null);
            Resources resources2 = context.getResources();
            this.k = resources2;
            imageView4 = (ImageView) findViewById(R.id.exo_play_pause);
            this.E = imageView4;
            if (imageView4 != null) {
            }
            imageView5 = (ImageView) findViewById(R.id.exo_prev);
            this.C = imageView5;
            if (imageView5 != null) {
            }
            imageView6 = (ImageView) findViewById(R.id.exo_next);
            this.D = imageView6;
            if (imageView6 != null) {
            }
            Typeface b2 = ResourcesCompat.b(context, R.font.roboto_medium_numbers);
            imageView7 = (ImageView) findViewById(R.id.exo_rew);
            TextView textView3 = (TextView) findViewById(R.id.exo_rew_with_amount);
            if (imageView7 != null) {
            }
            view = this.G;
            if (view != null) {
            }
            imageView8 = (ImageView) findViewById(R.id.exo_ffwd);
            TextView textView22 = (TextView) findViewById(R.id.exo_ffwd_with_amount);
            if (imageView8 != null) {
            }
            view2 = this.F;
            if (view2 != null) {
            }
            imageView9 = (ImageView) findViewById(R.id.exo_repeat_toggle);
            this.J = imageView9;
            if (imageView9 != null) {
            }
            imageView10 = (ImageView) findViewById(R.id.exo_shuffle);
            this.K = imageView10;
            if (imageView10 != null) {
            }
            this.n0 = resources2.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
            this.o0 = resources2.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
            imageView11 = (ImageView) findViewById(R.id.exo_vr);
            this.L = imageView11;
            if (imageView11 != null) {
            }
            PlayerControlViewLayoutManager playerControlViewLayoutManager2 = new PlayerControlViewLayoutManager(this);
            this.j = playerControlViewLayoutManager2;
            playerControlViewLayoutManager2.D = true;
            SettingsAdapter settingsAdapter2 = new SettingsAdapter(new String[]{resources2.getString(R.string.exo_controls_playback_speed), resources2.getString(R.string.exo_track_selection_title_audio)}, new Drawable[]{resources2.getDrawable(R.drawable.exo_styled_controls_speed, context.getTheme()), resources2.getDrawable(R.drawable.exo_styled_controls_audiotrack, context.getTheme())});
            this.v = settingsAdapter2;
            this.B = resources2.getDimensionPixelSize(R.dimen.exo_settings_offset);
            RecyclerView recyclerView2 = (RecyclerView) LayoutInflater.from(context).inflate(R.layout.exo_styled_settings_list, (ViewGroup) null);
            this.u = recyclerView2;
            recyclerView2.setAdapter(settingsAdapter2);
            getContext();
            recyclerView2.setLayoutManager(new LinearLayoutManager(1));
            PopupWindow popupWindow2 = new PopupWindow((View) recyclerView2, -2, -2, true);
            this.A = popupWindow2;
            popupWindow2.setOnDismissListener(this.m);
            this.P0 = true;
            this.z = new DefaultTrackNameProvider(getResources());
            this.r0 = resources2.getDrawable(R.drawable.exo_styled_controls_subtitle_on, context.getTheme());
            this.s0 = resources2.getDrawable(R.drawable.exo_styled_controls_subtitle_off, context.getTheme());
            this.t0 = resources2.getString(R.string.exo_controls_cc_enabled_description);
            this.u0 = resources2.getString(R.string.exo_controls_cc_disabled_description);
            this.x = new TextTrackSelectionAdapter();
            this.y = new AudioTrackSelectionAdapter();
            this.w = new PlaybackSpeedAdapter(resources2.getStringArray(R.array.exo_controls_playback_speeds), Q0);
            this.d0 = resources2.getDrawable(R.drawable.exo_styled_controls_play, context.getTheme());
            this.e0 = resources2.getDrawable(R.drawable.exo_styled_controls_pause, context.getTheme());
            this.v0 = resources2.getDrawable(R.drawable.exo_styled_controls_fullscreen_exit, context.getTheme());
            this.w0 = resources2.getDrawable(R.drawable.exo_styled_controls_fullscreen_enter, context.getTheme());
            this.f0 = resources2.getDrawable(R.drawable.exo_styled_controls_repeat_off, context.getTheme());
            this.g0 = resources2.getDrawable(R.drawable.exo_styled_controls_repeat_one, context.getTheme());
            this.h0 = resources2.getDrawable(R.drawable.exo_styled_controls_repeat_all, context.getTheme());
            this.l0 = resources2.getDrawable(R.drawable.exo_styled_controls_shuffle_on, context.getTheme());
            this.m0 = resources2.getDrawable(R.drawable.exo_styled_controls_shuffle_off, context.getTheme());
            this.x0 = resources2.getString(R.string.exo_controls_fullscreen_exit_description);
            this.y0 = resources2.getString(R.string.exo_controls_fullscreen_enter_description);
            this.i0 = resources2.getString(R.string.exo_controls_repeat_off_description);
            this.j0 = resources2.getString(R.string.exo_controls_repeat_one_description);
            this.k0 = resources2.getString(R.string.exo_controls_repeat_all_description);
            this.p0 = resources2.getString(R.string.exo_controls_shuffle_on_description);
            this.q0 = resources2.getString(R.string.exo_controls_shuffle_off_description);
            playerControlViewLayoutManager2.h((ViewGroup) findViewById(R.id.exo_bottom_bar), true);
            playerControlViewLayoutManager2.h(this.F, true);
            playerControlViewLayoutManager2.h(this.G, true);
            playerControlViewLayoutManager2.h(imageView5, true);
            playerControlViewLayoutManager2.h(imageView6, true);
            playerControlViewLayoutManager2.h(imageView10, false);
            playerControlViewLayoutManager2.h(imageView, false);
            playerControlViewLayoutManager2.h(imageView11, false);
            if (this.J0 != 0) {
            }
            playerControlViewLayoutManager2.h(imageView9, z);
            addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: sd
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    PlayerControlView playerControlView = PlayerControlView.this;
                    int i9 = playerControlView.B;
                    PopupWindow popupWindow22 = playerControlView.A;
                    int i10 = i4 - i2;
                    int i11 = i8 - i6;
                    if ((i3 - i != i7 - i5 || i10 != i11) && popupWindow22.isShowing()) {
                        playerControlView.u();
                        popupWindow22.update(view3, (playerControlView.getWidth() - popupWindow22.getWidth()) - i9, (-popupWindow22.getHeight()) - i9, -1, -1);
                    }
                }
            });
        }
        this.q = cls22;
        this.r = method42;
        this.s = method3;
        this.S = (TextView) findViewById(R.id.exo_duration);
        this.T = (TextView) findViewById(R.id.exo_position);
        imageView = (ImageView) findViewById(R.id.exo_subtitle);
        this.M = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(this.m);
        }
        imageView2 = (ImageView) findViewById(R.id.exo_fullscreen);
        this.N = imageView2;
        View.OnClickListener onClickListener32 = new View.OnClickListener() { // from class: rd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                PlayerControlView.this.o(!r0.A0);
            }
        };
        if (imageView2 != null) {
            imageView2.setVisibility(8);
            imageView2.setOnClickListener(onClickListener32);
        }
        imageView3 = (ImageView) findViewById(R.id.exo_minimal_fullscreen);
        this.O = imageView3;
        View.OnClickListener onClickListener222 = new View.OnClickListener() { // from class: rd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                PlayerControlView.this.o(!r0.A0);
            }
        };
        if (imageView3 != null) {
            imageView3.setVisibility(8);
            imageView3.setOnClickListener(onClickListener222);
        }
        findViewById = findViewById(R.id.exo_settings);
        this.P = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(this.m);
        }
        findViewById2 = findViewById(R.id.exo_playback_speed);
        this.Q = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(this.m);
        }
        findViewById3 = findViewById(R.id.exo_audio_track);
        this.R = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(this.m);
        }
        timeBar = (TimeBar) findViewById(R.id.exo_progress);
        View findViewById422 = findViewById(R.id.exo_progress_placeholder);
        if (timeBar != null) {
            this.U = timeBar;
        } else if (findViewById422 != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context);
            defaultTimeBar.setId(R.id.exo_progress);
            defaultTimeBar.setLayoutParams(findViewById422.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById422.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById422);
            viewGroup.removeView(findViewById422);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.U = defaultTimeBar;
        } else {
            this.U = null;
        }
        timeBar2 = this.U;
        if (timeBar2 != null) {
            ComponentListener componentListener = this.m;
            componentListener.getClass();
            ((DefaultTimeBar) timeBar2).G.add(componentListener);
        }
        this.l = Util.k(null);
        Resources resources22 = context.getResources();
        this.k = resources22;
        imageView4 = (ImageView) findViewById(R.id.exo_play_pause);
        this.E = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(this.m);
        }
        imageView5 = (ImageView) findViewById(R.id.exo_prev);
        this.C = imageView5;
        if (imageView5 != null) {
            imageView5.setImageDrawable(resources22.getDrawable(R.drawable.exo_styled_controls_previous, context.getTheme()));
            imageView5.setOnClickListener(this.m);
        }
        imageView6 = (ImageView) findViewById(R.id.exo_next);
        this.D = imageView6;
        if (imageView6 != null) {
            imageView6.setImageDrawable(resources22.getDrawable(R.drawable.exo_styled_controls_next, context.getTheme()));
            imageView6.setOnClickListener(this.m);
        }
        Typeface b22 = ResourcesCompat.b(context, R.font.roboto_medium_numbers);
        imageView7 = (ImageView) findViewById(R.id.exo_rew);
        TextView textView32 = (TextView) findViewById(R.id.exo_rew_with_amount);
        if (imageView7 != null) {
            imageView7.setImageDrawable(resources22.getDrawable(R.drawable.exo_styled_controls_simple_rewind, context.getTheme()));
            this.G = imageView7;
            this.I = null;
        } else if (textView32 != null) {
            textView32.setTypeface(b22);
            this.I = textView32;
            this.G = textView32;
        } else {
            this.I = null;
            this.G = null;
        }
        view = this.G;
        if (view != null) {
            view.setOnClickListener(this.m);
        }
        imageView8 = (ImageView) findViewById(R.id.exo_ffwd);
        TextView textView222 = (TextView) findViewById(R.id.exo_ffwd_with_amount);
        if (imageView8 != null) {
            imageView8.setImageDrawable(resources22.getDrawable(R.drawable.exo_styled_controls_simple_fastforward, context.getTheme()));
            this.F = imageView8;
            this.H = null;
        } else if (textView222 != null) {
            textView222.setTypeface(b22);
            this.H = textView222;
            this.F = textView222;
        } else {
            this.H = null;
            this.F = null;
        }
        view2 = this.F;
        if (view2 != null) {
            view2.setOnClickListener(this.m);
        }
        imageView9 = (ImageView) findViewById(R.id.exo_repeat_toggle);
        this.J = imageView9;
        if (imageView9 != null) {
            imageView9.setOnClickListener(this.m);
        }
        imageView10 = (ImageView) findViewById(R.id.exo_shuffle);
        this.K = imageView10;
        if (imageView10 != null) {
            imageView10.setOnClickListener(this.m);
        }
        this.n0 = resources22.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.o0 = resources22.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        imageView11 = (ImageView) findViewById(R.id.exo_vr);
        this.L = imageView11;
        if (imageView11 != null) {
            imageView11.setImageDrawable(resources22.getDrawable(R.drawable.exo_styled_controls_vr, context.getTheme()));
            n(imageView11, false);
        }
        PlayerControlViewLayoutManager playerControlViewLayoutManager22 = new PlayerControlViewLayoutManager(this);
        this.j = playerControlViewLayoutManager22;
        playerControlViewLayoutManager22.D = true;
        SettingsAdapter settingsAdapter22 = new SettingsAdapter(new String[]{resources22.getString(R.string.exo_controls_playback_speed), resources22.getString(R.string.exo_track_selection_title_audio)}, new Drawable[]{resources22.getDrawable(R.drawable.exo_styled_controls_speed, context.getTheme()), resources22.getDrawable(R.drawable.exo_styled_controls_audiotrack, context.getTheme())});
        this.v = settingsAdapter22;
        this.B = resources22.getDimensionPixelSize(R.dimen.exo_settings_offset);
        RecyclerView recyclerView22 = (RecyclerView) LayoutInflater.from(context).inflate(R.layout.exo_styled_settings_list, (ViewGroup) null);
        this.u = recyclerView22;
        recyclerView22.setAdapter(settingsAdapter22);
        getContext();
        recyclerView22.setLayoutManager(new LinearLayoutManager(1));
        PopupWindow popupWindow22 = new PopupWindow((View) recyclerView22, -2, -2, true);
        this.A = popupWindow22;
        popupWindow22.setOnDismissListener(this.m);
        this.P0 = true;
        this.z = new DefaultTrackNameProvider(getResources());
        this.r0 = resources22.getDrawable(R.drawable.exo_styled_controls_subtitle_on, context.getTheme());
        this.s0 = resources22.getDrawable(R.drawable.exo_styled_controls_subtitle_off, context.getTheme());
        this.t0 = resources22.getString(R.string.exo_controls_cc_enabled_description);
        this.u0 = resources22.getString(R.string.exo_controls_cc_disabled_description);
        this.x = new TextTrackSelectionAdapter();
        this.y = new AudioTrackSelectionAdapter();
        this.w = new PlaybackSpeedAdapter(resources22.getStringArray(R.array.exo_controls_playback_speeds), Q0);
        this.d0 = resources22.getDrawable(R.drawable.exo_styled_controls_play, context.getTheme());
        this.e0 = resources22.getDrawable(R.drawable.exo_styled_controls_pause, context.getTheme());
        this.v0 = resources22.getDrawable(R.drawable.exo_styled_controls_fullscreen_exit, context.getTheme());
        this.w0 = resources22.getDrawable(R.drawable.exo_styled_controls_fullscreen_enter, context.getTheme());
        this.f0 = resources22.getDrawable(R.drawable.exo_styled_controls_repeat_off, context.getTheme());
        this.g0 = resources22.getDrawable(R.drawable.exo_styled_controls_repeat_one, context.getTheme());
        this.h0 = resources22.getDrawable(R.drawable.exo_styled_controls_repeat_all, context.getTheme());
        this.l0 = resources22.getDrawable(R.drawable.exo_styled_controls_shuffle_on, context.getTheme());
        this.m0 = resources22.getDrawable(R.drawable.exo_styled_controls_shuffle_off, context.getTheme());
        this.x0 = resources22.getString(R.string.exo_controls_fullscreen_exit_description);
        this.y0 = resources22.getString(R.string.exo_controls_fullscreen_enter_description);
        this.i0 = resources22.getString(R.string.exo_controls_repeat_off_description);
        this.j0 = resources22.getString(R.string.exo_controls_repeat_one_description);
        this.k0 = resources22.getString(R.string.exo_controls_repeat_all_description);
        this.p0 = resources22.getString(R.string.exo_controls_shuffle_on_description);
        this.q0 = resources22.getString(R.string.exo_controls_shuffle_off_description);
        playerControlViewLayoutManager22.h((ViewGroup) findViewById(R.id.exo_bottom_bar), true);
        playerControlViewLayoutManager22.h(this.F, true);
        playerControlViewLayoutManager22.h(this.G, true);
        playerControlViewLayoutManager22.h(imageView5, true);
        playerControlViewLayoutManager22.h(imageView6, true);
        playerControlViewLayoutManager22.h(imageView10, false);
        playerControlViewLayoutManager22.h(imageView, false);
        playerControlViewLayoutManager22.h(imageView11, false);
        if (this.J0 != 0) {
            z = true;
        } else {
            z = false;
        }
        playerControlViewLayoutManager22.h(imageView9, z);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: sd
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                PlayerControlView playerControlView = PlayerControlView.this;
                int i9 = playerControlView.B;
                PopupWindow popupWindow222 = playerControlView.A;
                int i10 = i4 - i2;
                int i11 = i8 - i6;
                if ((i3 - i != i7 - i5 || i10 != i11) && popupWindow222.isShowing()) {
                    playerControlView.u();
                    popupWindow222.update(view3, (playerControlView.getWidth() - popupWindow222.getWidth()) - i9, (-popupWindow222.getHeight()) - i9, -1, -1);
                }
            }
        });
    }

    public static void a(PlayerControlView playerControlView, Player player, long j) {
        if (playerControlView.E0) {
            BasePlayer basePlayer = (BasePlayer) player;
            if (basePlayer.V(17) && basePlayer.V(10)) {
                Timeline K = basePlayer.K();
                int o = K.o();
                int i = 0;
                while (true) {
                    long N = Util.N(K.m(i, playerControlView.b0, 0L).k);
                    if (j < N) {
                        break;
                    }
                    if (i == o - 1) {
                        j = N;
                        break;
                    } else {
                        j -= N;
                        i++;
                    }
                }
                basePlayer.Y(i, j, false);
            }
        } else {
            BasePlayer basePlayer2 = (BasePlayer) player;
            if (basePlayer2.V(5)) {
                basePlayer2.Z(5, j);
            }
        }
        playerControlView.s();
    }

    public static boolean c(Player player, Timeline.Window window) {
        Timeline K;
        int o;
        BasePlayer basePlayer = (BasePlayer) player;
        if (!basePlayer.V(17) || (o = (K = basePlayer.K()).o()) <= 1 || o > 100) {
            return false;
        }
        for (int i = 0; i < o; i++) {
            if (K.m(i, window, 0L).k == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f) {
        Player player = this.z0;
        if (player != null && ((BasePlayer) player).V(13)) {
            Player player2 = this.z0;
            player2.c(new PlaybackParameters(f, player2.e().b));
        }
    }

    public final boolean d(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        Player player = this.z0;
        if (player == null || (keyCode != 90 && keyCode != 89 && keyCode != 85 && keyCode != 79 && keyCode != 126 && keyCode != 127 && keyCode != 87 && keyCode != 88)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode == 90) {
                if (player.y() != 4) {
                    BasePlayer basePlayer = (BasePlayer) player;
                    if (basePlayer.V(12)) {
                        long S = basePlayer.S() + basePlayer.v();
                        long duration = basePlayer.getDuration();
                        if (duration != -9223372036854775807L) {
                            S = Math.min(S, duration);
                        }
                        basePlayer.Z(12, Math.max(S, 0L));
                    }
                }
            } else {
                if (keyCode == 89) {
                    BasePlayer basePlayer2 = (BasePlayer) player;
                    if (basePlayer2.V(11)) {
                        long S2 = basePlayer2.S() + (-basePlayer2.T());
                        long duration2 = basePlayer2.getDuration();
                        if (duration2 != -9223372036854775807L) {
                            S2 = Math.min(S2, duration2);
                        }
                        basePlayer2.Z(11, Math.max(S2, 0L));
                    }
                }
                if (keyEvent.getRepeatCount() == 0) {
                    if (keyCode != 79 && keyCode != 85) {
                        if (keyCode != 87) {
                            if (keyCode != 88) {
                                if (keyCode != 126) {
                                    if (keyCode == 127) {
                                        String str = Util.a;
                                        BasePlayer basePlayer3 = (BasePlayer) player;
                                        if (basePlayer3.V(1)) {
                                            basePlayer3.u(false);
                                        }
                                    }
                                } else {
                                    Util.x(player);
                                }
                            } else {
                                BasePlayer basePlayer4 = (BasePlayer) player;
                                if (basePlayer4.V(7)) {
                                    basePlayer4.b0();
                                }
                            }
                        } else {
                            BasePlayer basePlayer5 = (BasePlayer) player;
                            if (basePlayer5.V(9)) {
                                basePlayer5.a0();
                            }
                        }
                    } else if (Util.L(player, this.D0)) {
                        Util.x(player);
                    } else {
                        BasePlayer basePlayer6 = (BasePlayer) player;
                        if (basePlayer6.V(1)) {
                            basePlayer6.u(false);
                        }
                    }
                }
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!d(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            return false;
        }
        return true;
    }

    public final void e(RecyclerView.Adapter adapter, View view) {
        this.u.setAdapter(adapter);
        u();
        this.P0 = false;
        PopupWindow popupWindow = this.A;
        popupWindow.dismiss();
        this.P0 = true;
        int width = getWidth() - popupWindow.getWidth();
        int i = this.B;
        popupWindow.showAsDropDown(view, width - i, (-popupWindow.getHeight()) - i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ImmutableList f(Tracks tracks, int i) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        ImmutableList immutableList = tracks.a;
        for (int i2 = 0; i2 < immutableList.size(); i2++) {
            Tracks.Group group = (Tracks.Group) immutableList.get(i2);
            if (group.b.c == i) {
                for (int i3 = 0; i3 < group.a; i3++) {
                    if (group.a(i3)) {
                        Format format = group.b.d[i3];
                        if ((format.e & 2) == 0) {
                            builder.d(new TrackInformation(tracks, i2, i3, this.z.c(format)));
                        }
                    }
                }
            }
        }
        return builder.i();
    }

    public final void g() {
        PlayerControlViewLayoutManager playerControlViewLayoutManager = this.j;
        int i = playerControlViewLayoutManager.A;
        if (i != 3 && i != 2) {
            playerControlViewLayoutManager.f();
            if (!playerControlViewLayoutManager.D) {
                playerControlViewLayoutManager.i(2);
            } else if (playerControlViewLayoutManager.A == 1) {
                playerControlViewLayoutManager.n.start();
            } else {
                playerControlViewLayoutManager.o.start();
            }
        }
    }

    public Player getPlayer() {
        return this.z0;
    }

    public int getRepeatToggleModes() {
        return this.J0;
    }

    public boolean getShowShuffleButton() {
        return this.j.b(this.K);
    }

    public boolean getShowSubtitleButton() {
        return this.j.b(this.M);
    }

    public int getShowTimeoutMs() {
        return this.G0;
    }

    public boolean getShowVrButton() {
        return this.j.b(this.L);
    }

    public final boolean h(Player player) {
        Class cls;
        if (player != null && (cls = this.q) != null && cls.isAssignableFrom(player.getClass())) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    public final boolean i(Player player) {
        Class cls;
        if (player != null && (cls = this.n) != null && cls.isAssignableFrom(player.getClass())) {
            return true;
        }
        return false;
    }

    public final boolean j() {
        PlayerControlViewLayoutManager playerControlViewLayoutManager = this.j;
        if (playerControlViewLayoutManager.A == 0 && playerControlViewLayoutManager.a.l()) {
            return true;
        }
        return false;
    }

    public final boolean k(Player player) {
        try {
            if (i(player)) {
                Method method = this.p;
                method.getClass();
                Object invoke = method.invoke(player, null);
                invoke.getClass();
                if (((Boolean) invoke).booleanValue()) {
                    return true;
                }
            }
            if (h(player)) {
                Method method2 = this.s;
                method2.getClass();
                Object invoke2 = method2.invoke(player, null);
                invoke2.getClass();
                if (((Boolean) invoke2).booleanValue()) {
                    return true;
                }
                return false;
            }
            return false;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    public final boolean l() {
        if (getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public final void m() {
        q();
        p();
        t();
        v();
        x();
        r();
        w();
    }

    public final void n(View view, boolean z) {
        float f;
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        if (z) {
            f = this.n0;
        } else {
            f = this.o0;
        }
        view.setAlpha(f);
    }

    public final void o(boolean z) {
        if (this.A0 == z) {
            return;
        }
        this.A0 = z;
        String str = this.y0;
        Drawable drawable = this.w0;
        String str2 = this.x0;
        Drawable drawable2 = this.v0;
        ImageView imageView = this.N;
        if (imageView != null) {
            if (z) {
                imageView.setImageDrawable(drawable2);
                imageView.setContentDescription(str2);
            } else {
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
            }
        }
        ImageView imageView2 = this.O;
        if (imageView2 != null) {
            if (z) {
                imageView2.setImageDrawable(drawable2);
                imageView2.setContentDescription(str2);
            } else {
                imageView2.setImageDrawable(drawable);
                imageView2.setContentDescription(str);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        PlayerControlViewLayoutManager playerControlViewLayoutManager = this.j;
        playerControlViewLayoutManager.a.addOnLayoutChangeListener(playerControlViewLayoutManager.y);
        this.B0 = true;
        if (j()) {
            playerControlViewLayoutManager.g();
        }
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        PlayerControlViewLayoutManager playerControlViewLayoutManager = this.j;
        playerControlViewLayoutManager.a.removeOnLayoutChangeListener(playerControlViewLayoutManager.y);
        this.B0 = false;
        removeCallbacks(this.c0);
        playerControlViewLayoutManager.f();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View view = this.j.b;
        if (view != null) {
            view.layout(0, 0, i3 - i, i4 - i2);
        }
    }

    public final void p() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        long j;
        long j2;
        if (l() && this.B0) {
            Player player = this.z0;
            if (player != null) {
                if (this.C0 && c(player, this.b0)) {
                    z = ((BasePlayer) player).V(10);
                } else {
                    z = ((BasePlayer) player).V(5);
                }
                BasePlayer basePlayer = (BasePlayer) player;
                z3 = basePlayer.V(7);
                z4 = basePlayer.V(11);
                z5 = basePlayer.V(12);
                z2 = basePlayer.V(9);
            } else {
                z = false;
                z2 = false;
                z3 = false;
                z4 = false;
                z5 = false;
            }
            Resources resources = this.k;
            View view = this.G;
            if (z4) {
                Player player2 = this.z0;
                if (player2 != null) {
                    j2 = player2.T();
                } else {
                    j2 = 5000;
                }
                int i = (int) (j2 / 1000);
                TextView textView = this.I;
                if (textView != null) {
                    textView.setText(String.valueOf(i));
                }
                if (view != null) {
                    view.setContentDescription(resources.getQuantityString(R.plurals.exo_controls_rewind_by_amount_description, i, Integer.valueOf(i)));
                }
            }
            View view2 = this.F;
            if (z5) {
                Player player3 = this.z0;
                if (player3 != null) {
                    j = player3.v();
                } else {
                    j = 15000;
                }
                int i2 = (int) (j / 1000);
                TextView textView2 = this.H;
                if (textView2 != null) {
                    textView2.setText(String.valueOf(i2));
                }
                if (view2 != null) {
                    view2.setContentDescription(resources.getQuantityString(R.plurals.exo_controls_fastforward_by_amount_description, i2, Integer.valueOf(i2)));
                }
            }
            n(this.C, z3);
            n(view, z4);
            n(view2, z5);
            n(this.D, z2);
            TimeBar timeBar = this.U;
            if (timeBar != null) {
                timeBar.setEnabled(z);
            }
        }
    }

    public final void q() {
        ImageView imageView;
        Drawable drawable;
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        MediaItem mediaItem;
        if (l() && this.B0 && (imageView = this.E) != null) {
            boolean L = Util.L(this.z0, this.D0);
            if (L) {
                drawable = this.d0;
            } else {
                drawable = this.e0;
            }
            if (L) {
                i = R.string.exo_controls_play_description;
            } else {
                i = R.string.exo_controls_pause_description;
            }
            imageView.setImageDrawable(drawable);
            imageView.setContentDescription(this.k.getString(i));
            Player player = this.z0;
            boolean z4 = false;
            if (player != null) {
                int y = player.y();
                BasePlayer basePlayer = (BasePlayer) player;
                if (basePlayer.V(16)) {
                    Timeline K = basePlayer.K();
                    if (K.p()) {
                        mediaItem = null;
                    } else {
                        mediaItem = K.m(basePlayer.D(), basePlayer.a, 0L).b;
                    }
                    if (mediaItem == null) {
                        z = false;
                        boolean V = basePlayer.V(1);
                        if (y != 1 && basePlayer.V(2)) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (y != 4 && basePlayer.V(4)) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z && (V || z2 || z3)) {
                            z4 = true;
                        }
                    }
                }
                z = true;
                boolean V2 = basePlayer.V(1);
                if (y != 1) {
                }
                z2 = false;
                if (y != 4) {
                }
                z3 = false;
                if (z) {
                    z4 = true;
                }
            }
            n(imageView, z4);
        }
    }

    public final void r() {
        PlaybackSpeedAdapter playbackSpeedAdapter;
        Player player = this.z0;
        if (player == null) {
            return;
        }
        float f = player.e().a;
        boolean z = false;
        float f2 = Float.MAX_VALUE;
        int i = 0;
        int i2 = 0;
        while (true) {
            playbackSpeedAdapter = this.w;
            float[] fArr = playbackSpeedAdapter.e;
            if (i >= fArr.length) {
                break;
            }
            float abs = Math.abs(f - fArr[i]);
            if (abs < f2) {
                i2 = i;
                f2 = abs;
            }
            i++;
        }
        playbackSpeedAdapter.f = i2;
        String str = playbackSpeedAdapter.d[i2];
        SettingsAdapter settingsAdapter = this.v;
        settingsAdapter.e[0] = str;
        if (settingsAdapter.e(1) || settingsAdapter.e(0)) {
            z = true;
        }
        n(this.P, z);
    }

    public final void s() {
        long j;
        long j2;
        int y;
        long j3;
        if (l() && this.B0) {
            Player player = this.z0;
            if (player != null && ((BasePlayer) player).V(16)) {
                j = player.w() + this.O0;
                j2 = player.P() + this.O0;
            } else {
                j = 0;
                j2 = 0;
            }
            TextView textView = this.T;
            if (textView != null && !this.F0) {
                textView.setText(Util.u(this.V, this.W, j));
            }
            TimeBar timeBar = this.U;
            if (timeBar != null) {
                timeBar.setPosition(j);
                if (k(player)) {
                    j2 = j;
                }
                timeBar.setBufferedPosition(j2);
            }
            defpackage.e eVar = this.c0;
            removeCallbacks(eVar);
            if (player == null) {
                y = 1;
            } else {
                y = player.y();
            }
            long j4 = 1000;
            if (player != null && ((BasePlayer) player).X()) {
                if (timeBar != null) {
                    j3 = timeBar.getPreferredUpdateDelay();
                } else {
                    j3 = 1000;
                }
                long min = Math.min(j3, 1000 - (j % 1000));
                float f = player.e().a;
                if (f > 0.0f) {
                    j4 = ((float) min) / f;
                }
                postDelayed(eVar, Util.h(j4, this.I0, 1000L));
                return;
            }
            if (y != 4 && y != 1) {
                postDelayed(eVar, 1000L);
            }
        }
    }

    public void setAnimationEnabled(boolean z) {
        this.j.D = z;
    }

    public void setMediaRouteButtonViewProvider(ViewProvider viewProvider) {
        final View findViewById = findViewById(R.id.exo_media_route_button_placeholder);
        if (findViewById != null) {
            if (viewProvider == null) {
                findViewById.setVisibility(8);
                return;
            }
            final ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            if (viewGroup != null) {
                ListenableFuture view = viewProvider.getView();
                FutureCallback<View> futureCallback = new FutureCallback<View>() { // from class: androidx.media3.ui.PlayerControlView.1
                    @Override // com.google.common.util.concurrent.FutureCallback
                    public final void a(Object obj) {
                        View view2 = (View) obj;
                        View view3 = findViewById;
                        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
                        if (layoutParams != null) {
                            view2.setId(R.id.exo_media_route_button_placeholder);
                            view2.setLayoutParams(layoutParams);
                            ViewGroup viewGroup2 = viewGroup;
                            int indexOfChild = viewGroup2.indexOfChild(view3);
                            viewGroup2.removeView(view3);
                            viewGroup2.addView(view2, indexOfChild);
                            view2.setVisibility(0);
                            PlayerControlView.this.j.h(view2, true);
                            return;
                        }
                        u2.l("The media route button placeholder missing layout params.");
                    }

                    @Override // com.google.common.util.concurrent.FutureCallback
                    public final void b() {
                        findViewById.setVisibility(8);
                    }
                };
                Handler handler = this.l;
                Objects.requireNonNull(handler);
                Futures.a(view, futureCallback, new u3(1, handler));
                return;
            }
            u2.l("The media route button placeholder has no parent view.");
            return;
        }
        u2.l("The media route button placeholder is missing.");
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(OnFullScreenModeChangedListener onFullScreenModeChangedListener) {
        boolean z;
        boolean z2 = true;
        if (onFullScreenModeChangedListener != null) {
            z = true;
        } else {
            z = false;
        }
        ImageView imageView = this.N;
        if (imageView != null) {
            if (z) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        if (onFullScreenModeChangedListener == null) {
            z2 = false;
        }
        ImageView imageView2 = this.O;
        if (imageView2 == null) {
            return;
        }
        if (z2) {
            imageView2.setVisibility(0);
        } else {
            imageView2.setVisibility(8);
        }
    }

    public void setPlayer(Player player) {
        boolean z;
        boolean z2 = false;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        if (player == null || player.L() == Looper.getMainLooper()) {
            z2 = true;
        }
        Preconditions.e(z2);
        Player player2 = this.z0;
        if (player2 == player) {
            return;
        }
        ComponentListener componentListener = this.m;
        if (player2 != null) {
            player2.B(componentListener);
        }
        this.z0 = player;
        if (player != null) {
            player.H(componentListener);
        }
        m();
    }

    public void setRepeatToggleModes(int i) {
        this.J0 = i;
        Player player = this.z0;
        boolean z = false;
        if (player != null && ((BasePlayer) player).V(15)) {
            int J = this.z0.J();
            if (i == 0 && J != 0) {
                this.z0.E(0);
            } else if (i == 1 && J == 2) {
                this.z0.E(1);
            } else if (i == 2 && J == 1) {
                this.z0.E(2);
            }
        }
        if (i != 0) {
            z = true;
        }
        this.j.h(this.J, z);
        t();
    }

    public void setShowFastForwardButton(boolean z) {
        this.j.h(this.F, z);
        p();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z) {
        this.C0 = z;
        w();
    }

    public void setShowNextButton(boolean z) {
        this.j.h(this.D, z);
        p();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z) {
        this.D0 = z;
        q();
    }

    public void setShowPreviousButton(boolean z) {
        this.j.h(this.C, z);
        p();
    }

    public void setShowRewindButton(boolean z) {
        this.j.h(this.G, z);
        p();
    }

    public void setShowShuffleButton(boolean z) {
        this.j.h(this.K, z);
        v();
    }

    public void setShowSubtitleButton(boolean z) {
        this.j.h(this.M, z);
    }

    public void setShowTimeoutMs(int i) {
        this.G0 = i;
        if (j()) {
            this.j.g();
        }
    }

    public void setShowVrButton(boolean z) {
        this.j.h(this.L, z);
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.I0 = Util.g(i, 16, 1000);
    }

    public void setTimeBarScrubbingEnabled(boolean z) {
        this.H0 = z;
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        boolean z;
        ImageView imageView = this.L;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
            if (onClickListener != null) {
                z = true;
            } else {
                z = false;
            }
            n(imageView, z);
        }
    }

    public final void t() {
        ImageView imageView;
        if (l() && this.B0 && (imageView = this.J) != null) {
            if (this.J0 == 0) {
                n(imageView, false);
                return;
            }
            Player player = this.z0;
            String str = this.i0;
            Drawable drawable = this.f0;
            if (player != null && ((BasePlayer) player).V(15)) {
                n(imageView, true);
                int J = player.J();
                if (J != 0) {
                    if (J != 1) {
                        if (J == 2) {
                            imageView.setImageDrawable(this.h0);
                            imageView.setContentDescription(this.k0);
                            return;
                        }
                        return;
                    }
                    imageView.setImageDrawable(this.g0);
                    imageView.setContentDescription(this.j0);
                    return;
                }
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            n(imageView, false);
            imageView.setImageDrawable(drawable);
            imageView.setContentDescription(str);
        }
    }

    public final void u() {
        RecyclerView recyclerView = this.u;
        recyclerView.measure(0, 0);
        int width = getWidth();
        int i = this.B;
        int min = Math.min(recyclerView.getMeasuredWidth(), width - (i * 2));
        PopupWindow popupWindow = this.A;
        popupWindow.setWidth(min);
        popupWindow.setHeight(Math.min(getHeight() - (i * 2), recyclerView.getMeasuredHeight()));
    }

    public final void v() {
        ImageView imageView;
        if (l() && this.B0 && (imageView = this.K) != null) {
            Player player = this.z0;
            if (!this.j.b(imageView)) {
                n(imageView, false);
                return;
            }
            String str = this.q0;
            Drawable drawable = this.m0;
            if (player != null && ((BasePlayer) player).V(14)) {
                n(imageView, true);
                if (player.N()) {
                    drawable = this.l0;
                }
                imageView.setImageDrawable(drawable);
                if (player.N()) {
                    str = this.p0;
                }
                imageView.setContentDescription(str);
                return;
            }
            n(imageView, false);
            imageView.setImageDrawable(drawable);
            imageView.setContentDescription(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v27 */
    public final void w() {
        boolean z;
        Timeline timeline;
        boolean z2;
        long j;
        long j2;
        int i;
        long N;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z3;
        boolean[] zArr;
        boolean z4;
        int length;
        Player player = this.z0;
        if (player == null) {
            return;
        }
        boolean z5 = this.C0;
        Timeline.Window window = this.b0;
        boolean z6 = false;
        boolean z7 = true;
        if (z5 && c(player, window)) {
            z = true;
        } else {
            z = false;
        }
        this.E0 = z;
        long j3 = 0;
        this.O0 = 0L;
        BasePlayer basePlayer = (BasePlayer) player;
        if (basePlayer.V(17)) {
            timeline = player.K();
        } else {
            timeline = Timeline.a;
        }
        if (!timeline.p()) {
            int D = player.D();
            boolean z8 = this.E0;
            if (z8) {
                i2 = 0;
            } else {
                i2 = D;
            }
            if (z8) {
                i3 = timeline.o() - 1;
            } else {
                i3 = D;
            }
            i = 0;
            long j4 = 0;
            while (true) {
                if (i2 > i3) {
                    break;
                }
                long j5 = -9223372036854775807L;
                if (i2 == D) {
                    this.O0 = Util.N(j4);
                }
                timeline.n(i2, window);
                if (window.k == -9223372036854775807L) {
                    Preconditions.n(this.E0 ^ z7);
                    break;
                }
                int i6 = window.l;
                boolean z9 = z6;
                while (i6 <= window.m) {
                    Timeline.Period period = this.a0;
                    timeline.f(i6, period, z9);
                    long j6 = j5;
                    period.g.getClass();
                    int i7 = period.g.a;
                    ?? r4 = z9;
                    while (r4 < i7) {
                        period.d(r4 == true ? 1 : 0);
                        long j7 = j3;
                        long j8 = period.e;
                        if (j8 >= j7) {
                            long[] jArr = this.K0;
                            i4 = D;
                            if (i == jArr.length) {
                                if (jArr.length == 0) {
                                    length = 1;
                                } else {
                                    length = jArr.length * 2;
                                }
                                this.K0 = Arrays.copyOf(jArr, length);
                                this.L0 = Arrays.copyOf(this.L0, length);
                            }
                            this.K0[i] = Util.N(j8 + j4);
                            boolean[] zArr2 = this.L0;
                            AdPlaybackState.AdGroup a = period.g.a(r4 == true ? 1 : 0);
                            int i8 = a.a;
                            if (i8 == -1) {
                                zArr = zArr2;
                                i5 = r4 == true ? 1 : 0;
                                z3 = true;
                                z4 = true;
                            } else {
                                int i9 = 0;
                                int i10 = r4;
                                while (i9 < i8) {
                                    zArr = zArr2;
                                    int i11 = a.e[i9];
                                    i5 = i10;
                                    z3 = true;
                                    if (i11 != 0 && i11 != 1) {
                                        i9++;
                                        zArr2 = zArr;
                                        i10 = i5;
                                    } else {
                                        z4 = true;
                                        break;
                                    }
                                }
                                zArr = zArr2;
                                i5 = i10;
                                z3 = true;
                                z4 = false;
                            }
                            zArr[i] = !z4;
                            i++;
                        } else {
                            i4 = D;
                            i5 = r4 == true ? 1 : 0;
                            z3 = z7;
                        }
                        z7 = z3;
                        j3 = j7;
                        r4 = i5 + 1;
                        D = i4;
                    }
                    i6++;
                    j5 = j6;
                    z9 = false;
                }
                j4 += window.k;
                i2++;
                z7 = z7;
                j3 = j3;
                z6 = false;
            }
            z2 = z7;
            j2 = j4;
        } else {
            z2 = true;
            if (basePlayer.V(16)) {
                Timeline K = basePlayer.K();
                if (K.p()) {
                    N = -9223372036854775807L;
                    j = 0;
                } else {
                    j = 0;
                    N = Util.N(K.m(basePlayer.D(), basePlayer.a, 0L).k);
                }
                if (N != -9223372036854775807L) {
                    j2 = Util.D(N);
                    i = 0;
                }
            } else {
                j = 0;
            }
            j2 = j;
            i = 0;
        }
        long N2 = Util.N(j2);
        TextView textView = this.S;
        if (textView != null) {
            textView.setText(Util.u(this.V, this.W, N2));
        }
        TimeBar timeBar = this.U;
        if (timeBar != null) {
            timeBar.setDuration(N2);
            long[] jArr2 = this.M0;
            int length2 = jArr2.length;
            int i12 = i + length2;
            long[] jArr3 = this.K0;
            if (i12 > jArr3.length) {
                this.K0 = Arrays.copyOf(jArr3, i12);
                this.L0 = Arrays.copyOf(this.L0, i12);
            }
            System.arraycopy(jArr2, 0, this.K0, i, length2);
            System.arraycopy(this.N0, 0, this.L0, i, length2);
            long[] jArr4 = this.K0;
            boolean[] zArr3 = this.L0;
            DefaultTimeBar defaultTimeBar = (DefaultTimeBar) timeBar;
            if (i12 != 0 && (jArr4 == null || zArr3 == null)) {
                z2 = false;
            }
            Preconditions.e(z2);
            defaultTimeBar.V = i12;
            defaultTimeBar.W = jArr4;
            defaultTimeBar.a0 = zArr3;
            defaultTimeBar.e();
        }
        s();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void x() {
        boolean z;
        TextTrackSelectionAdapter textTrackSelectionAdapter = this.x;
        textTrackSelectionAdapter.getClass();
        List list = Collections.EMPTY_LIST;
        textTrackSelectionAdapter.d = list;
        AudioTrackSelectionAdapter audioTrackSelectionAdapter = this.y;
        audioTrackSelectionAdapter.getClass();
        audioTrackSelectionAdapter.d = list;
        Player player = this.z0;
        ImageView imageView = this.M;
        boolean z2 = false;
        if (player != null && ((BasePlayer) player).V(30) && ((BasePlayer) this.z0).V(29)) {
            Tracks z3 = this.z0.z();
            ImmutableList f = f(z3, 1);
            audioTrackSelectionAdapter.d = f;
            PlayerControlView playerControlView = PlayerControlView.this;
            Player player2 = playerControlView.z0;
            SettingsAdapter settingsAdapter = playerControlView.v;
            player2.getClass();
            TrackSelectionParameters O = player2.O();
            if (f.isEmpty()) {
                settingsAdapter.e[1] = playerControlView.getResources().getString(R.string.exo_track_selection_none);
            } else if (!audioTrackSelectionAdapter.h(O)) {
                settingsAdapter.e[1] = playerControlView.getResources().getString(R.string.exo_track_selection_auto);
            } else {
                int i = 0;
                while (true) {
                    if (i >= f.size()) {
                        break;
                    }
                    TrackInformation trackInformation = (TrackInformation) f.get(i);
                    if (trackInformation.a.e[trackInformation.b]) {
                        settingsAdapter.e[1] = trackInformation.c;
                        break;
                    }
                    i++;
                }
            }
            if (this.j.b(imageView)) {
                textTrackSelectionAdapter.h(f(z3, 3));
            } else {
                textTrackSelectionAdapter.h(ImmutableList.r());
            }
        }
        if (textTrackSelectionAdapter.a() > 0) {
            z = true;
        } else {
            z = false;
        }
        n(imageView, z);
        SettingsAdapter settingsAdapter2 = this.v;
        if (settingsAdapter2.e(1) || settingsAdapter2.e(0)) {
            z2 = true;
        }
        n(this.P, z2);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class TextTrackSelectionAdapter extends TrackSelectionAdapter {
        public TextTrackSelectionAdapter() {
            super();
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public final void c(SubSettingViewHolder subSettingViewHolder, int i) {
            int i2;
            super.c(subSettingViewHolder, i);
            if (i > 0) {
                TrackInformation trackInformation = (TrackInformation) this.d.get(i - 1);
                View view = subSettingViewHolder.v;
                if (trackInformation.a.e[trackInformation.b]) {
                    i2 = 0;
                } else {
                    i2 = 4;
                }
                view.setVisibility(i2);
            }
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public final void f(SubSettingViewHolder subSettingViewHolder) {
            boolean z;
            subSettingViewHolder.u.setText(R.string.exo_track_selection_none);
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 < this.d.size()) {
                    TrackInformation trackInformation = (TrackInformation) this.d.get(i2);
                    if (trackInformation.a.e[trackInformation.b]) {
                        z = false;
                        break;
                    }
                    i2++;
                } else {
                    z = true;
                    break;
                }
            }
            View view = subSettingViewHolder.v;
            if (!z) {
                i = 4;
            }
            view.setVisibility(i);
            subSettingViewHolder.a.setOnClickListener(new a(2, this));
        }

        public final void h(List list) {
            Drawable drawable;
            String str;
            PlayerControlView playerControlView = PlayerControlView.this;
            ImageView imageView = playerControlView.M;
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= list.size()) {
                    break;
                }
                TrackInformation trackInformation = (TrackInformation) list.get(i);
                if (trackInformation.a.e[trackInformation.b]) {
                    z = true;
                    break;
                }
                i++;
            }
            if (imageView != null) {
                if (z) {
                    drawable = playerControlView.r0;
                } else {
                    drawable = playerControlView.s0;
                }
                imageView.setImageDrawable(drawable);
                if (z) {
                    str = playerControlView.t0;
                } else {
                    str = playerControlView.u0;
                }
                imageView.setContentDescription(str);
            }
            this.d = list;
        }

        @Override // androidx.media3.ui.PlayerControlView.TrackSelectionAdapter
        public final void g(String str) {
        }
    }

    public void setProgressUpdateListener(ProgressUpdateListener progressUpdateListener) {
    }
}
