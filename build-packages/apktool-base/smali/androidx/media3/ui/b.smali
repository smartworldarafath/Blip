.class public final synthetic Landroidx/media3/ui/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic j:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/ui/b;->j:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/ui/b;->k:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/b;->j:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->g:Landroidx/media3/ui/PlayerControlView;

    .line 4
    .line 5
    iget v1, p1, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->f:I

    .line 6
    .line 7
    iget p0, p0, Landroidx/media3/ui/b;->k:I

    .line 8
    .line 9
    if-eq p0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->e:[F

    .line 12
    .line 13
    aget p0, p1, p0

    .line 14
    .line 15
    invoke-static {v0, p0}, Landroidx/media3/ui/PlayerControlView;->b(Landroidx/media3/ui/PlayerControlView;F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, v0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
