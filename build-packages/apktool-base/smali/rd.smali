.class public final synthetic Lrd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic j:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrd;->j:Landroidx/media3/ui/PlayerControlView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lrd;->j:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->A0:Z

    .line 4
    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->o(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
