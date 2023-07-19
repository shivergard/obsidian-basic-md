import { App, Plugin, PluginSettingTab, Setting } from 'obsidian';

interface OpenBasicMdPluginSettings {}

export default class OpenBasicMdPlugin extends Plugin {
  settings: OpenBasicMdPluginSettings;

  async onload() {
    await this.loadSettings();

    // This adds a command that can be triggered using a hotkey
    this.addCommand({
      id: 'open-basic-md',
      name: 'Open Basic.md',
      callback: () => {
        const file = this.app.vault.getAbstractFileByPath('Root/Basic.md');
        if (file) {
			this.app.workspace.openLinkText(file.path, '', false);
        }
      }
    });
  }

  async loadSettings() {
    // No settings to load
  }

  async saveSettings() {
    // No settings to save
  }
}