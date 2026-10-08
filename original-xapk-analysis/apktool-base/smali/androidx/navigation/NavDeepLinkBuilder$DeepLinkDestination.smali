.class final Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDeepLinkBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeepLinkDestination"
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;->b:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method
