package androidx.media3.ui;

import android.view.View;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.Player;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.ui.PlayerControlView;
import androidx.recyclerview.widget.RecyclerView;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements View.OnClickListener {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ a(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RecyclerView recyclerView;
        RecyclerView.Adapter adapter;
        int D;
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                PlayerControlView playerControlView = PlayerControlView.this;
                Player player = playerControlView.z0;
                if (player != null && ((BasePlayer) player).V(29)) {
                    TrackSelectionParameters O = playerControlView.z0.O();
                    Player player2 = playerControlView.z0;
                    DefaultTrackSelector.Parameters parameters = (DefaultTrackSelector.Parameters) O;
                    parameters.getClass();
                    DefaultTrackSelector.Parameters.Builder builder = new DefaultTrackSelector.Parameters.Builder(parameters);
                    builder.b(1);
                    builder.i(1, false);
                    player2.F(builder.a());
                    playerControlView.v.e[1] = playerControlView.getResources().getString(R.string.exo_track_selection_auto);
                    playerControlView.A.dismiss();
                    return;
                }
                return;
            case 1:
                PlayerControlView.SettingViewHolder settingViewHolder = (PlayerControlView.SettingViewHolder) obj;
                PlayerControlView playerControlView2 = PlayerControlView.this;
                int i2 = -1;
                if (settingViewHolder.s != null && (recyclerView = settingViewHolder.r) != null && (adapter = recyclerView.getAdapter()) != null && (D = settingViewHolder.r.D(settingViewHolder)) != -1 && settingViewHolder.s == adapter) {
                    i2 = D;
                }
                View view2 = playerControlView2.P;
                if (i2 == 0) {
                    PlayerControlView.PlaybackSpeedAdapter playbackSpeedAdapter = playerControlView2.w;
                    view2.getClass();
                    playerControlView2.e(playbackSpeedAdapter, view2);
                    return;
                } else {
                    if (i2 == 1) {
                        PlayerControlView.AudioTrackSelectionAdapter audioTrackSelectionAdapter = playerControlView2.y;
                        view2.getClass();
                        playerControlView2.e(audioTrackSelectionAdapter, view2);
                        return;
                    }
                    playerControlView2.A.dismiss();
                    return;
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                PlayerControlView playerControlView3 = PlayerControlView.this;
                Player player3 = playerControlView3.z0;
                if (player3 != null && ((BasePlayer) player3).V(29)) {
                    TrackSelectionParameters O2 = playerControlView3.z0.O();
                    Player player4 = playerControlView3.z0;
                    DefaultTrackSelector.Parameters parameters2 = (DefaultTrackSelector.Parameters) O2;
                    parameters2.getClass();
                    DefaultTrackSelector.Parameters.Builder builder2 = new DefaultTrackSelector.Parameters.Builder(parameters2);
                    builder2.b(3);
                    builder2.d();
                    builder2.f();
                    builder2.h();
                    player4.F(builder2.a());
                    playerControlView3.A.dismiss();
                    return;
                }
                return;
            default:
                PlayerControlViewLayoutManager playerControlViewLayoutManager = (PlayerControlViewLayoutManager) obj;
                playerControlViewLayoutManager.g();
                if (view.getId() == R.id.exo_overflow_show) {
                    playerControlViewLayoutManager.r.start();
                    return;
                } else {
                    if (view.getId() == R.id.exo_overflow_hide) {
                        playerControlViewLayoutManager.s.start();
                        return;
                    }
                    return;
                }
        }
    }
}
