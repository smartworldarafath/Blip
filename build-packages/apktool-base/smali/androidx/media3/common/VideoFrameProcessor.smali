.class public interface abstract Landroidx/media3/common/VideoFrameProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/VideoFrameProcessor$Factory;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/VideoFrameProcessor$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/media3/common/VideoFrameProcessor;->a:Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    return-void
.end method
