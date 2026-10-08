.class public final Lcoil3/memory/RealWeakMemoryCache$InternalValue;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/memory/RealWeakMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalValue"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Ljava/util/Map;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/util/Map;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/memory/RealWeakMemoryCache$InternalValue;->a:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/memory/RealWeakMemoryCache$InternalValue;->b:Ljava/util/Map;

    .line 7
    .line 8
    iput-wide p3, p0, Lcoil3/memory/RealWeakMemoryCache$InternalValue;->c:J

    .line 9
    .line 10
    return-void
.end method
