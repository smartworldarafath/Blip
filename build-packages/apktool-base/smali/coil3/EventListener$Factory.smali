.class public interface abstract Lcoil3/EventListener$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final g:Lf7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf7;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lf7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcoil3/EventListener$Factory;->g:Lf7;

    .line 9
    .line 10
    return-void
.end method
