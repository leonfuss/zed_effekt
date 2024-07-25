use zed::LanguageServerId;
use zed_extension_api::{self as zed, Result};

struct EffektExtension;

impl zed::Extension for EffektExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        let Some(r_path) = worktree.which("effekt") else {
            return Err("Effekt could not be found!".into());
        };

        Ok(zed::Command {
            command: r_path.to_string(),
            args: vec!["--server".into()],
            env: Default::default(),
        })
    }
}

zed::register_extension!(EffektExtension);
