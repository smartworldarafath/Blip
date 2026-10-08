.class public final synthetic Landroidx/media3/ui/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic j:Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;

.field public final synthetic k:Landroidx/media3/common/Player;

.field public final synthetic l:Landroidx/media3/common/TrackGroup;

.field public final synthetic m:Landroidx/media3/ui/PlayerControlView$TrackInformation;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/ui/c;->j:Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/ui/c;->k:Landroidx/media3/common/Player;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/ui/c;->l:Landroidx/media3/common/TrackGroup;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/ui/c;->m:Landroidx/media3/ui/PlayerControlView$TrackInformation;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/c;->k:Landroidx/media3/common/Player;

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/common/BasePlayer;

    .line 4
    .line 5
    const/16 v0, 0x1d

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->O()Landroidx/media3/common/TrackSelectionParameters;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroidx/media3/common/TrackSelectionOverride;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/ui/c;->m:Landroidx/media3/ui/PlayerControlView$TrackInformation;

    .line 31
    .line 32
    iget v3, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->b:I

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v4, p0, Landroidx/media3/ui/c;->l:Landroidx/media3/common/TrackGroup;

    .line 43
    .line 44
    invoke-direct {v0, v4, v3}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->e(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 48
    .line 49
    .line 50
    iget-object v0, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->a:Landroidx/media3/common/Tracks$Group;

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    .line 53
    .line 54
    iget v0, v0, Landroidx/media3/common/TrackGroup;->c:I

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v0, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->i(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->a()Landroidx/media3/common/TrackSelectionParameters;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->F(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->c:Ljava/lang/String;

    .line 68
    .line 69
    iget-object p0, p0, Landroidx/media3/ui/c;->j:Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->g(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->e:Landroidx/media3/ui/PlayerControlView;

    .line 75
    .line 76
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/PopupWindow;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
