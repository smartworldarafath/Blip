.class public final Lcoil3/decode/BitmapFactoryDecoder$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/decode/BitmapFactoryDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/sync/Semaphore;

.field public final b:Lcoil3/decode/ExifOrientationStrategy;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/decode/BitmapFactoryDecoder$Factory;->a:Lkotlinx/coroutines/sync/Semaphore;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/decode/BitmapFactoryDecoder$Factory;->b:Lcoil3/decode/ExifOrientationStrategy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;
    .locals 2

    .line 1
    new-instance v0, Lcoil3/decode/BitmapFactoryDecoder;

    .line 2
    .line 3
    iget-object p1, p1, Lcoil3/fetch/SourceFetchResult;->a:Lcoil3/decode/ImageSource;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/decode/BitmapFactoryDecoder$Factory;->a:Lkotlinx/coroutines/sync/Semaphore;

    .line 6
    .line 7
    iget-object p0, p0, Lcoil3/decode/BitmapFactoryDecoder$Factory;->b:Lcoil3/decode/ExifOrientationStrategy;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, v1, p0}, Lcoil3/decode/BitmapFactoryDecoder;-><init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
