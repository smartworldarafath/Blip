.class public final Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->a:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lu0;->w(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;->a:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;->a:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;

    .line 4
    .line 5
    invoke-static {p1, p0}, Lu0;->x(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
