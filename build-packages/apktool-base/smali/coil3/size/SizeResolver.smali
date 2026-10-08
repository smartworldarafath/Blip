.class public interface abstract Lcoil3/size/SizeResolver;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lcoil3/size/RealSizeResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcoil3/size/Size;->c:Lcoil3/size/Size;

    .line 2
    .line 3
    new-instance v1, Lcoil3/size/RealSizeResolver;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lcoil3/size/RealSizeResolver;-><init>(Lcoil3/size/Size;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
