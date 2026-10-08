.class public final Landroidx/compose/ui/semantics/SemanticsPropertyKey;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lkotlin/jvm/functions/Function2;

.field public final c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcf;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcf;-><init>(IB)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->b:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 19
    iput-boolean p2, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->c:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "AccessibilityKey: "

    .line 4
    .line 5
    invoke-static {v0, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
