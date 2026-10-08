.class public interface abstract Landroidx/media3/common/audio/AudioProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;,
        Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;,
        Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public abstract h()Z
.end method

.method public abstract i()Ljava/nio/ByteBuffer;
.end method

.method public abstract j(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract k(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V
.end method

.method public abstract l()V
.end method

.method public abstract m(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
.end method

.method public n(J)J
    .locals 0

    .line 1
    return-wide p1
.end method

.method public abstract reset()V
.end method
