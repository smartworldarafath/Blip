.class public abstract Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

.field public static b:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, v1}, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;->a:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    .line 8
    .line 9
    return-void
.end method
